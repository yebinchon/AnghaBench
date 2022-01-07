
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_du_group {int channels_mask; } ;


 int BIT (int) ;
 int DEFR6 ;
 int DEFR6_CODE ;
 int DEFR6_ODPM02_DISP ;
 int DEFR6_ODPM12_DISP ;
 int rcar_du_group_write (struct rcar_du_group*,int ,int ) ;

__attribute__((used)) static void rcar_du_group_setup_pins(struct rcar_du_group *rgrp)
{
 u32 defr6 = DEFR6_CODE;

 if (rgrp->channels_mask & BIT(0))
  defr6 |= DEFR6_ODPM02_DISP;

 if (rgrp->channels_mask & BIT(1))
  defr6 |= DEFR6_ODPM12_DISP;

 rcar_du_group_write(rgrp, DEFR6, defr6);
}
