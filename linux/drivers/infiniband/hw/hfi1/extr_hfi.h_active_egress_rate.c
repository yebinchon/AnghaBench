
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct hfi1_pportdata {scalar_t__ link_speed_active; scalar_t__ link_width_active; } ;


 scalar_t__ OPA_LINK_SPEED_25G ;




__attribute__((used)) static inline u32 active_egress_rate(struct hfi1_pportdata *ppd)
{
 u16 link_speed = ppd->link_speed_active;
 u16 link_width = ppd->link_width_active;
 u32 egress_rate;

 if (link_speed == OPA_LINK_SPEED_25G)
  egress_rate = 25000;
 else
  egress_rate = 12500;

 switch (link_width) {
 case 128:
  egress_rate *= 4;
  break;
 case 129:
  egress_rate *= 3;
  break;
 case 130:
  egress_rate *= 2;
  break;
 default:

  break;
 }

 return egress_rate;
}
