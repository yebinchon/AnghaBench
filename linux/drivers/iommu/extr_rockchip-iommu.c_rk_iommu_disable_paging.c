
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int num_mmu; int * bases; int dev; } ;


 int RK_MMU_CMD_DISABLE_PAGING ;
 int RK_MMU_POLL_PERIOD_US ;
 int RK_MMU_POLL_TIMEOUT_US ;
 int RK_MMU_STATUS ;
 int dev_err (int ,char*,int ) ;
 int readx_poll_timeout (int (*) (struct rk_iommu*),struct rk_iommu*,int,int,int ,int ) ;
 int rk_iommu_command (struct rk_iommu*,int ) ;
 int rk_iommu_is_paging_enabled (struct rk_iommu*) ;
 int rk_iommu_read (int ,int ) ;

__attribute__((used)) static int rk_iommu_disable_paging(struct rk_iommu *iommu)
{
 int ret, i;
 bool val;

 if (!rk_iommu_is_paging_enabled(iommu))
  return 0;

 rk_iommu_command(iommu, RK_MMU_CMD_DISABLE_PAGING);

 ret = readx_poll_timeout(rk_iommu_is_paging_enabled, iommu, val,
     !val, RK_MMU_POLL_PERIOD_US,
     RK_MMU_POLL_TIMEOUT_US);
 if (ret)
  for (i = 0; i < iommu->num_mmu; i++)
   dev_err(iommu->dev, "Disable paging request timed out, status: %#08x\n",
    rk_iommu_read(iommu->bases[i], RK_MMU_STATUS));

 return ret;
}
