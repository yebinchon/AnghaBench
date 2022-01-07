
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_iommu_secure_ptbl_size (int ,int ,size_t*) ;
 TYPE_1__* __scm ;

int qcom_scm_iommu_secure_ptbl_size(u32 spare, size_t *size)
{
 return __qcom_scm_iommu_secure_ptbl_size(__scm->dev, spare, size);
}
