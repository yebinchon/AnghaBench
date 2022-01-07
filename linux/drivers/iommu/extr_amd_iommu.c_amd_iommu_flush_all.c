
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;


 int build_inv_all (struct iommu_cmd*) ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;

__attribute__((used)) static void amd_iommu_flush_all(struct amd_iommu *iommu)
{
 struct iommu_cmd cmd;

 build_inv_all(&cmd);

 iommu_queue_command(iommu, &cmd);
 iommu_completion_wait(iommu);
}
