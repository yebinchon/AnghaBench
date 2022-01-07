
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hfi1_pportdata {int current_egress_rate; } ;


 int egress_cycles (int,int) ;

__attribute__((used)) static u16 delay_cycles(struct hfi1_pportdata *ppd, u32 desired_egress_rate,
   u32 dw_len)
{
 u32 delta_cycles;
 u32 current_egress_rate = ppd->current_egress_rate;


 if (desired_egress_rate == -1)
  return 0;

 if (desired_egress_rate >= current_egress_rate)
  return 0;

 delta_cycles = egress_cycles(dw_len * 4, desired_egress_rate) -
   egress_cycles(dw_len * 4, current_egress_rate);

 return (u16)delta_cycles;
}
