
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_iommu_secure_ptbl_init (int ,int ,int ,int ) ;
 TYPE_1__* __scm ;

int qcom_scm_iommu_secure_ptbl_init(u64 addr, u32 size, u32 spare)
{
 return __qcom_scm_iommu_secure_ptbl_init(__scm->dev, addr, size, spare);
}
