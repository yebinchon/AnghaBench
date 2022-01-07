
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pti_device {int patgen; int mode; int clkdiv; int lpp_dest; scalar_t__ base; scalar_t__ freeclk; } ;
struct intel_th_device {int dev; } ;


 int LPP_DEST ;
 int PTI_CLKDIV ;
 int PTI_EN ;
 int PTI_FCEN ;
 int PTI_MODE ;
 int PTI_PATGENMODE ;
 scalar_t__ REG_PTI_CTL ;
 int __ffs (int ) ;
 struct pti_device* dev_get_drvdata (int *) ;
 int intel_th_trace_enable (struct intel_th_device*) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static int intel_th_pti_activate(struct intel_th_device *thdev)
{
 struct pti_device *pti = dev_get_drvdata(&thdev->dev);
 u32 ctl = PTI_EN;

 if (pti->patgen)
  ctl |= pti->patgen << __ffs(PTI_PATGENMODE);
 if (pti->freeclk)
  ctl |= PTI_FCEN;
 ctl |= pti->mode << __ffs(PTI_MODE);
 ctl |= pti->clkdiv << __ffs(PTI_CLKDIV);
 ctl |= pti->lpp_dest << __ffs(LPP_DEST);

 iowrite32(ctl, pti->base + REG_PTI_CTL);

 intel_th_trace_enable(thdev);

 return 0;
}
