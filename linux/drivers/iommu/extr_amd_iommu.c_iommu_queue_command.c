
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;


 int iommu_queue_command_sync (struct amd_iommu*,struct iommu_cmd*,int) ;

__attribute__((used)) static int iommu_queue_command(struct amd_iommu *iommu, struct iommu_cmd *cmd)
{
 return iommu_queue_command_sync(iommu, cmd, 1);
}
