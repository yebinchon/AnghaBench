
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pti_device {int mode; int clkdiv; int freeclk; int lpp_dest; int lpp_dest_mask; TYPE_2__* thdev; scalar_t__ base; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ output; } ;


 scalar_t__ GTH_LPP ;
 int LPP_BSSBPRESENT ;
 int LPP_DEST ;
 int LPP_DEST_EXI ;
 int LPP_DEST_PTI ;
 int LPP_PTIPRESENT ;
 int PTI_CLKDIV ;
 int PTI_FCEN ;
 int PTI_MODE ;
 scalar_t__ REG_PTI_CTL ;
 int __ffs (int) ;
 int ioread32 (scalar_t__) ;
 int * pti_mode ;
 size_t pti_width_mode (int) ;

__attribute__((used)) static void read_hw_config(struct pti_device *pti)
{
 u32 ctl = ioread32(pti->base + REG_PTI_CTL);

 pti->mode = (ctl & PTI_MODE) >> __ffs(PTI_MODE);
 pti->clkdiv = (ctl & PTI_CLKDIV) >> __ffs(PTI_CLKDIV);
 pti->freeclk = !!(ctl & PTI_FCEN);

 if (!pti_mode[pti->mode])
  pti->mode = pti_width_mode(4);
 if (!pti->clkdiv)
  pti->clkdiv = 1;

 if (pti->thdev->output.type == GTH_LPP) {
  if (ctl & LPP_PTIPRESENT)
   pti->lpp_dest_mask |= LPP_DEST_PTI;
  if (ctl & LPP_BSSBPRESENT)
   pti->lpp_dest_mask |= LPP_DEST_EXI;
  if (ctl & LPP_DEST)
   pti->lpp_dest = 1;
 }
}
