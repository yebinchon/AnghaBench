
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_lap_msg {int offset56; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_lap_set_traffic_class(struct cm_lap_msg *lap_msg,
         u8 traffic_class)
{
 lap_msg->offset56 = cpu_to_be32(traffic_class |
      (be32_to_cpu(lap_msg->offset56) &
       0xFFFFFF00));
}
