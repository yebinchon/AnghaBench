
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pl08x_bus_data {scalar_t__ buswidth; } ;
struct pl08x_lli_build_data {struct pl08x_bus_data dstbus; struct pl08x_bus_data srcbus; } ;
struct pl08x_driver_data {TYPE_1__* vd; } ;
struct TYPE_2__ {scalar_t__ ftdmac020; } ;


 int PL080_CONTROL_DST_INCR ;
 int PL080_CONTROL_SRC_INCR ;

__attribute__((used)) static void pl08x_choose_master_bus(struct pl08x_driver_data *pl08x,
        struct pl08x_lli_build_data *bd,
        struct pl08x_bus_data **mbus,
        struct pl08x_bus_data **sbus,
        u32 cctl)
{
 bool dst_incr;
 bool src_incr;





 if (pl08x->vd->ftdmac020) {
  dst_incr = 1;
  src_incr = 1;
 } else {
  dst_incr = !!(cctl & PL080_CONTROL_DST_INCR);
  src_incr = !!(cctl & PL080_CONTROL_SRC_INCR);
 }





 if (!dst_incr) {
  *mbus = &bd->dstbus;
  *sbus = &bd->srcbus;
 } else if (!src_incr) {
  *mbus = &bd->srcbus;
  *sbus = &bd->dstbus;
 } else {
  if (bd->dstbus.buswidth >= bd->srcbus.buswidth) {
   *mbus = &bd->dstbus;
   *sbus = &bd->srcbus;
  } else {
   *mbus = &bd->srcbus;
   *sbus = &bd->dstbus;
  }
 }
}
