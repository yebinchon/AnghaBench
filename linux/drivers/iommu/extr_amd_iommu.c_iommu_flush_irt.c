
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;


 int build_inv_irt (struct iommu_cmd*,int ) ;
 int iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;

__attribute__((used)) static void iommu_flush_irt(struct amd_iommu *iommu, u16 devid)
{
 struct iommu_cmd cmd;

 build_inv_irt(&cmd, devid);

 iommu_queue_command(iommu, &cmd);
}
