
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msc {scalar_t__ reg_base; } ;
struct intel_th_device {int dev; } ;


 int MSCSTS_PLE ;
 unsigned long MSC_PLE_WAITLOOP_DEPTH ;
 scalar_t__ REG_MSU_MSC0STS ;
 int __raw_readl (scalar_t__) ;
 int cpu_relax () ;
 int dev_dbg (int ,char*) ;
 struct msc* dev_get_drvdata (int *) ;
 int msc_dev (struct msc*) ;

__attribute__((used)) static void intel_th_msc_wait_empty(struct intel_th_device *thdev)
{
 struct msc *msc = dev_get_drvdata(&thdev->dev);
 unsigned long count;
 u32 reg;

 for (reg = 0, count = MSC_PLE_WAITLOOP_DEPTH;
      count && !(reg & MSCSTS_PLE); count--) {
  reg = __raw_readl(msc->reg_base + REG_MSU_MSC0STS);
  cpu_relax();
 }

 if (!count)
  dev_dbg(msc_dev(msc), "timeout waiting for MSC0 PLE\n");
}
