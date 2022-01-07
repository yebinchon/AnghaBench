
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;


 int CMD_INV_IOMMU_ALL_PAGES_ADDRESS ;
 int build_inv_iommu_pages (struct iommu_cmd*,int ,int ,int ,int) ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;

__attribute__((used)) static void amd_iommu_flush_tlb_domid(struct amd_iommu *iommu, u32 dom_id)
{
 struct iommu_cmd cmd;

 build_inv_iommu_pages(&cmd, 0, CMD_INV_IOMMU_ALL_PAGES_ADDRESS,
         dom_id, 1);
 iommu_queue_command(iommu, &cmd);

 iommu_completion_wait(iommu);
}
