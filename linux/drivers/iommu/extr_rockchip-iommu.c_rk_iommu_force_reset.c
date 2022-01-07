
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_iommu {int num_mmu; int dev; int * bases; scalar_t__ reset_disabled; } ;


 int DTE_ADDR_DUMMY ;
 int EFAULT ;
 int RK_DTE_PT_ADDRESS_MASK ;
 int RK_MMU_CMD_FORCE_RESET ;
 int RK_MMU_DTE_ADDR ;
 int RK_MMU_FORCE_RESET_TIMEOUT_US ;
 int RK_MMU_POLL_TIMEOUT_US ;
 int dev_err (int ,char*) ;
 int readx_poll_timeout (int ,struct rk_iommu*,int,int,int ,int ) ;
 int rk_iommu_command (struct rk_iommu*,int ) ;
 int rk_iommu_is_reset_done ;
 int rk_iommu_read (int ,int ) ;
 int rk_iommu_write (int ,int ,int) ;

__attribute__((used)) static int rk_iommu_force_reset(struct rk_iommu *iommu)
{
 int ret, i;
 u32 dte_addr;
 bool val;

 if (iommu->reset_disabled)
  return 0;





 for (i = 0; i < iommu->num_mmu; i++) {
  rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR, DTE_ADDR_DUMMY);

  dte_addr = rk_iommu_read(iommu->bases[i], RK_MMU_DTE_ADDR);
  if (dte_addr != (DTE_ADDR_DUMMY & RK_DTE_PT_ADDRESS_MASK)) {
   dev_err(iommu->dev, "Error during raw reset. MMU_DTE_ADDR is not functioning\n");
   return -EFAULT;
  }
 }

 rk_iommu_command(iommu, RK_MMU_CMD_FORCE_RESET);

 ret = readx_poll_timeout(rk_iommu_is_reset_done, iommu, val,
     val, RK_MMU_FORCE_RESET_TIMEOUT_US,
     RK_MMU_POLL_TIMEOUT_US);
 if (ret) {
  dev_err(iommu->dev, "FORCE_RESET command timed out\n");
  return ret;
 }

 return 0;
}
