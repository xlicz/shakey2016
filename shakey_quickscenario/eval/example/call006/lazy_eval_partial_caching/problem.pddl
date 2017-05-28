(define (problem p01)
  (:domain shakey)
  (:moduleoptions )
  (:moduleexitoptions )
  (:objects
    doorway0 doorway1 - doorway
    doorway0_room0 doorway0_room1 doorway1_room1 doorway1_room2 - doorway_in_location
    doorway0_room0_out doorway0_room1_out doorway1_room1_out doorway1_room2_out - doorway_out_location
    /map - frameid
    init_loc robot_location - location
    wedge0_search_location_loc1_room0 box0_doorway0_room0 wedge0_doorway1_room1 - movable_object
    object_location_loc0_room0 object_location_loc1_room2 - object_location
    wedge0_search_location_loc1_room0_push_loc_0 wedge0_search_location_loc1_room0_push_loc_1 wedge0_search_location_loc1_room0_push_loc_2 box0_doorway0_room0_push_loc_1 box0_doorway0_room0_push_loc_2 wedge0_doorway1_room1_push_loc_2 - pushable_location
    room0 room1 room2 - room
    search_location_loc0_room2 search_location_loc1_room0 - search_location
  )
  (:init
    (object_occupied box0_doorway0_room0)
    (pushed box0_doorway0_room0)
    (doorway-state-known doorway0)
    (doorway-state-known doorway1)
    (at-base doorway1_room1)
    (object_at object_location_loc0_room0)
    (searched search_location_loc1_room0)
    (object_occupied wedge0_doorway1_room1)
    (object_occupied wedge0_search_location_loc1_room0)
    (pushed wedge0_search_location_loc1_room0)
    (= (push-cost box0_doorway0_room0_push_loc_1) 99801)
    (= (push-distance box0_doorway0_room0_push_loc_1) 2)
    (= (qw box0_doorway0_room0_push_loc_1) 0.710648)
    (= (qx box0_doorway0_room0_push_loc_1) 0)
    (= (qy box0_doorway0_room0_push_loc_1) 0)
    (= (qz box0_doorway0_room0_push_loc_1) 0.703548)
    (= (timestamp box0_doorway0_room0_push_loc_1) 672.745)
    (= (x box0_doorway0_room0_push_loc_1) 4.98196)
    (= (y box0_doorway0_room0_push_loc_1) 0.370872)
    (= (z box0_doorway0_room0_push_loc_1) 0)
    (= (push-cost box0_doorway0_room0_push_loc_2) 99801)
    (= (push-distance box0_doorway0_room0_push_loc_2) 2)
    (= (qw box0_doorway0_room0_push_loc_2) 0.703548)
    (= (qx box0_doorway0_room0_push_loc_2) 0)
    (= (qy box0_doorway0_room0_push_loc_2) -0)
    (= (qz box0_doorway0_room0_push_loc_2) -0.710648)
    (= (timestamp box0_doorway0_room0_push_loc_2) 672.745)
    (= (x box0_doorway0_room0_push_loc_2) 5.00706)
    (= (y box0_doorway0_room0_push_loc_2) 2.87058)
    (= (z box0_doorway0_room0_push_loc_2) 0)
    (= (qw doorway0_room0) 0.999801)
    (= (qx doorway0_room0) 0)
    (= (qy doorway0_room0) 0)
    (= (qz doorway0_room0) 0.0199572)
    (= (timestamp doorway0_room0) 1625.21)
    (= (x doorway0_room0) 3.45562)
    (= (y doorway0_room0) 1.48176)
    (= (z doorway0_room0) -9.22747e-05)
    (= (qw doorway0_room0_out) -0.0199572)
    (= (qx doorway0_room0_out) 0)
    (= (qy doorway0_room0_out) 0)
    (= (qz doorway0_room0_out) 0.999801)
    (= (timestamp doorway0_room0_out) 1625.21)
    (= (x doorway0_room0_out) 3.45562)
    (= (y doorway0_room0_out) 1.48176)
    (= (z doorway0_room0_out) -9.22747e-05)
    (= (qw doorway0_room1) -0.0198129)
    (= (qx doorway0_room1) 0)
    (= (qy doorway0_room1) 0)
    (= (qz doorway0_room1) 0.999804)
    (= (timestamp doorway0_room1) 1690.03)
    (= (x doorway0_room1) 8.2)
    (= (y doorway0_room1) 1.50514)
    (= (z doorway0_room1) -4.60599e-08)
    (= (qw doorway0_room1_out) -0.999804)
    (= (qx doorway0_room1_out) 0)
    (= (qy doorway0_room1_out) 0)
    (= (qz doorway0_room1_out) -0.0198129)
    (= (timestamp doorway0_room1_out) 1690.03)
    (= (x doorway0_room1_out) 8.2)
    (= (y doorway0_room1_out) 1.50514)
    (= (z doorway0_room1_out) -4.60599e-08)
    (= (qw doorway1_room1) 0.999967)
    (= (qx doorway1_room1) 0)
    (= (qy doorway1_room1) 0)
    (= (qz doorway1_room1) 0.00817479)
    (= (timestamp doorway1_room1) 1756.04)
    (= (x doorway1_room1) 7.0351)
    (= (y doorway1_room1) -3.55147)
    (= (z doorway1_room1) 4.07404e-08)
    (= (qw doorway1_room1_out) -0.00817479)
    (= (qx doorway1_room1_out) 0)
    (= (qy doorway1_room1_out) 0)
    (= (qz doorway1_room1_out) 0.999967)
    (= (timestamp doorway1_room1_out) 1756.04)
    (= (x doorway1_room1_out) 7.0351)
    (= (y doorway1_room1_out) -3.55147)
    (= (z doorway1_room1_out) 4.07404e-08)
    (= (qw doorway1_room2) 0.0122667)
    (= (qx doorway1_room2) 0)
    (= (qy doorway1_room2) 0)
    (= (qz doorway1_room2) 0.999925)
    (= (timestamp doorway1_room2) 1821.77)
    (= (x doorway1_room2) 11.6537)
    (= (y doorway1_room2) -3.52786)
    (= (z doorway1_room2) 6.21392e-08)
    (= (qw doorway1_room2_out) -0.999925)
    (= (qx doorway1_room2_out) 0)
    (= (qy doorway1_room2_out) 0)
    (= (qz doorway1_room2_out) 0.0122667)
    (= (timestamp doorway1_room2_out) 1821.77)
    (= (x doorway1_room2_out) 11.6537)
    (= (y doorway1_room2_out) -3.52786)
    (= (z doorway1_room2_out) 6.21392e-08)
    (= (qw init_loc) 1)
    (= (qx init_loc) 0)
    (= (qy init_loc) 0)
    (= (qz init_loc) 0)
    (= (timestamp init_loc) 446.568)
    (= (x init_loc) 0)
    (= (y init_loc) 0)
    (= (z init_loc) 0)
    (= (qw object_location_loc0_room0) 1)
    (= (qx object_location_loc0_room0) 0)
    (= (qy object_location_loc0_room0) 0)
    (= (qz object_location_loc0_room0) 0)
    (= (timestamp object_location_loc0_room0) 1.36638e+09)
    (= (x object_location_loc0_room0) -5)
    (= (y object_location_loc0_room0) -1)
    (= (z object_location_loc0_room0) 0)
    (= (qw object_location_loc1_room2) 1)
    (= (qx object_location_loc1_room2) 0)
    (= (qy object_location_loc1_room2) 0)
    (= (qz object_location_loc1_room2) 0)
    (= (timestamp object_location_loc1_room2) 1.36638e+09)
    (= (x object_location_loc1_room2) 12)
    (= (y object_location_loc1_room2) 3.5)
    (= (z object_location_loc1_room2) 0)
    (= (qw robot_location) 0.999988)
    (= (qx robot_location) 3.93385e-05)
    (= (qy robot_location) -2.65424e-05)
    (= (qz robot_location) -0.00486831)
    (= (timestamp robot_location) 847.096)
    (= (x robot_location) 7.10883)
    (= (y robot_location) -3.48869)
    (= (z robot_location) 0.0510001)
    (= (qw search_location_loc0_room2) -0.179464)
    (= (qx search_location_loc0_room2) 0)
    (= (qy search_location_loc0_room2) 0)
    (= (qz search_location_loc0_room2) 0.983765)
    (= (timestamp search_location_loc0_room2) 1.49518e+09)
    (= (x search_location_loc0_room2) 17.3624)
    (= (y search_location_loc0_room2) 0.833664)
    (= (z search_location_loc0_room2) 0)
    (= (qw search_location_loc1_room0) 0.902964)
    (= (qx search_location_loc1_room0) 0)
    (= (qy search_location_loc1_room0) 0)
    (= (qz search_location_loc1_room0) -0.429715)
    (= (timestamp search_location_loc1_room0) 1.49517e+09)
    (= (x search_location_loc1_room0) -4.87551)
    (= (y search_location_loc1_room0) 3.26376)
    (= (z search_location_loc1_room0) 0)
    (= (push-cost wedge0_doorway1_room1_push_loc_2) 99800)
    (= (push-distance wedge0_doorway1_room1_push_loc_2) 2)
    (= (qw wedge0_doorway1_room1_push_loc_2) 0.721863)
    (= (qx wedge0_doorway1_room1_push_loc_2) 0)
    (= (qy wedge0_doorway1_room1_push_loc_2) 0)
    (= (qz wedge0_doorway1_room1_push_loc_2) -0.692036)
    (= (timestamp wedge0_doorway1_room1_push_loc_2) 847.096)
    (= (x wedge0_doorway1_room1_push_loc_2) 8.71813)
    (= (y wedge0_doorway1_room1_push_loc_2) -2.47829)
    (= (z wedge0_doorway1_room1_push_loc_2) 0)
    (= (push-cost wedge0_search_location_loc1_room0_push_loc_0) 260)
    (= (push-distance wedge0_search_location_loc1_room0_push_loc_0) 2.6)
    (= (qw wedge0_search_location_loc1_room0_push_loc_0) 0.636354)
    (= (qx wedge0_search_location_loc1_room0_push_loc_0) 0)
    (= (qy wedge0_search_location_loc1_room0_push_loc_0) -0)
    (= (qz wedge0_search_location_loc1_room0_push_loc_0) 0.771397)
    (= (timestamp wedge0_search_location_loc1_room0_push_loc_0) 518.713)
    (= (x wedge0_search_location_loc1_room0_push_loc_0) -3.62019)
    (= (y wedge0_search_location_loc1_room0_push_loc_0) -0.149385)
    (= (z wedge0_search_location_loc1_room0_push_loc_0) 0)
    (= (push-cost wedge0_search_location_loc1_room0_push_loc_1) 290)
    (= (push-distance wedge0_search_location_loc1_room0_push_loc_1) 2.9)
    (= (qw wedge0_search_location_loc1_room0_push_loc_1) 0.771397)
    (= (qx wedge0_search_location_loc1_room0_push_loc_1) 0)
    (= (qy wedge0_search_location_loc1_room0_push_loc_1) 0)
    (= (qz wedge0_search_location_loc1_room0_push_loc_1) -0.636354)
    (= (timestamp wedge0_search_location_loc1_room0_push_loc_1) 518.714)
    (= (x wedge0_search_location_loc1_room0_push_loc_1) -4.05748)
    (= (y wedge0_search_location_loc1_room0_push_loc_1) 2.10888)
    (= (z wedge0_search_location_loc1_room0_push_loc_1) 0)
    (= (push-cost wedge0_search_location_loc1_room0_push_loc_2) 225)
    (= (push-distance wedge0_search_location_loc1_room0_push_loc_2) 2.25)
    (= (qw wedge0_search_location_loc1_room0_push_loc_2) 0.0956925)
    (= (qx wedge0_search_location_loc1_room0_push_loc_2) 0)
    (= (qy wedge0_search_location_loc1_room0_push_loc_2) -0)
    (= (qz wedge0_search_location_loc1_room0_push_loc_2) -0.995411)
    (= (timestamp wedge0_search_location_loc1_room0_push_loc_2) 518.714)
    (= (x wedge0_search_location_loc1_room0_push_loc_2) -2.75207)
    (= (y wedge0_search_location_loc1_room0_push_loc_2) 1.19065)
    (= (z wedge0_search_location_loc1_room0_push_loc_2) 0)
    (= (belongs-to-doorway box0_doorway0_room0) doorway0)
    (= (in-room box0_doorway0_room0) room0)
    (= (belongs-to-movable-object box0_doorway0_room0_push_loc_1) box0_doorway0_room0)
    (= (frame-id box0_doorway0_room0_push_loc_1) /map)
    (= (location-in-room box0_doorway0_room0_push_loc_1) room0)
    (= (belongs-to-movable-object box0_doorway0_room0_push_loc_2) box0_doorway0_room0)
    (= (frame-id box0_doorway0_room0_push_loc_2) /map)
    (= (location-in-room box0_doorway0_room0_push_loc_2) room0)
    (= (belongs-to-doorway doorway0_room0) doorway0)
    (= (frame-id doorway0_room0) /map)
    (= (location-in-room doorway0_room0) room0)
    (= (belongs-to-doorway doorway0_room0_out) doorway0)
    (= (frame-id doorway0_room0_out) /map)
    (= (location-in-room doorway0_room0_out) room0)
    (= (belongs-to-doorway doorway0_room1) doorway0)
    (= (frame-id doorway0_room1) /map)
    (= (location-in-room doorway0_room1) room1)
    (= (belongs-to-doorway doorway0_room1_out) doorway0)
    (= (frame-id doorway0_room1_out) /map)
    (= (location-in-room doorway0_room1_out) room1)
    (= (belongs-to-doorway doorway1_room1) doorway1)
    (= (frame-id doorway1_room1) /map)
    (= (location-in-room doorway1_room1) room1)
    (= (belongs-to-doorway doorway1_room1_out) doorway1)
    (= (frame-id doorway1_room1_out) /map)
    (= (location-in-room doorway1_room1_out) room1)
    (= (belongs-to-doorway doorway1_room2) doorway1)
    (= (frame-id doorway1_room2) /map)
    (= (location-in-room doorway1_room2) room2)
    (= (belongs-to-doorway doorway1_room2_out) doorway1)
    (= (frame-id doorway1_room2_out) /map)
    (= (location-in-room doorway1_room2_out) room2)
    (= (frame-id init_loc) /map)
    (= (location-in-room init_loc) room0)
    (= (frame-id object_location_loc0_room0) /map)
    (= (location-in-room object_location_loc0_room0) room0)
    (= (frame-id object_location_loc1_room2) /map)
    (= (location-in-room object_location_loc1_room2) room2)
    (= (frame-id robot_location) /map)
    (= (location-in-room robot_location) room1)
    (= (frame-id search_location_loc0_room2) /map)
    (= (location-in-room search_location_loc0_room2) room2)
    (= (frame-id search_location_loc1_room0) /map)
    (= (location-in-room search_location_loc1_room0) room0)
    (= (belongs-to-doorway wedge0_doorway1_room1) doorway1)
    (= (in-room wedge0_doorway1_room1) room1)
    (= (belongs-to-movable-object wedge0_doorway1_room1_push_loc_2) wedge0_doorway1_room1)
    (= (frame-id wedge0_doorway1_room1_push_loc_2) /map)
    (= (location-in-room wedge0_doorway1_room1_push_loc_2) room1)
    (= (belongs-to-search-location wedge0_search_location_loc1_room0) search_location_loc1_room0)
    (= (in-room wedge0_search_location_loc1_room0) room0)
    (= (belongs-to-movable-object wedge0_search_location_loc1_room0_push_loc_0) wedge0_search_location_loc1_room0)
    (= (frame-id wedge0_search_location_loc1_room0_push_loc_0) /map)
    (= (location-in-room wedge0_search_location_loc1_room0_push_loc_0) room0)
    (= (belongs-to-movable-object wedge0_search_location_loc1_room0_push_loc_1) wedge0_search_location_loc1_room0)
    (= (frame-id wedge0_search_location_loc1_room0_push_loc_1) /map)
    (= (location-in-room wedge0_search_location_loc1_room0_push_loc_1) room0)
    (= (belongs-to-movable-object wedge0_search_location_loc1_room0_push_loc_2) wedge0_search_location_loc1_room0)
    (= (frame-id wedge0_search_location_loc1_room0_push_loc_2) /map)
    (= (location-in-room wedge0_search_location_loc1_room0_push_loc_2) room0)
  )
  (:goal (and
    (forall (?o - movable_object) (pushed ?o))
    (forall (?o - object_location) (object-at-location ?o))
    (forall (?o - search_location) (searched ?o))
  ))
)