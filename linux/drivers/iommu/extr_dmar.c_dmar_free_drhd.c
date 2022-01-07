
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_drhd_unit {scalar_t__ iommu; scalar_t__ devices_cnt; scalar_t__ devices; } ;


 int dmar_free_dev_scope (scalar_t__*,scalar_t__*) ;
 int free_iommu (scalar_t__) ;
 int kfree (struct dmar_drhd_unit*) ;

__attribute__((used)) static void dmar_free_drhd(struct dmar_drhd_unit *dmaru)
{
 if (dmaru->devices && dmaru->devices_cnt)
  dmar_free_dev_scope(&dmaru->devices, &dmaru->devices_cnt);
 if (dmaru->iommu)
  free_iommu(dmaru->iommu);
 kfree(dmaru);
}
