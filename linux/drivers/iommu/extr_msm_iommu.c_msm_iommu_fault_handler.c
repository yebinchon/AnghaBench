
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_iommu_dev {int ncb; scalar_t__ base; } ;
typedef int irqreturn_t ;


 unsigned int GET_FSR (scalar_t__,int) ;
 int SET_FSR (scalar_t__,int,int) ;
 int __disable_clocks (struct msm_iommu_dev*) ;
 int __enable_clocks (struct msm_iommu_dev*) ;
 int msm_iommu_lock ;
 int pr_err (char*,...) ;
 int print_ctx_regs (scalar_t__,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

irqreturn_t msm_iommu_fault_handler(int irq, void *dev_id)
{
 struct msm_iommu_dev *iommu = dev_id;
 unsigned int fsr;
 int i, ret;

 spin_lock(&msm_iommu_lock);

 if (!iommu) {
  pr_err("Invalid device ID in context interrupt handler\n");
  goto fail;
 }

 pr_err("Unexpected IOMMU page fault!\n");
 pr_err("base = %08x\n", (unsigned int)iommu->base);

 ret = __enable_clocks(iommu);
 if (ret)
  goto fail;

 for (i = 0; i < iommu->ncb; i++) {
  fsr = GET_FSR(iommu->base, i);
  if (fsr) {
   pr_err("Fault occurred in context %d.\n", i);
   pr_err("Interesting registers:\n");
   print_ctx_regs(iommu->base, i);
   SET_FSR(iommu->base, i, 0x4000000F);
  }
 }
 __disable_clocks(iommu);
fail:
 spin_unlock(&msm_iommu_lock);
 return 0;
}
