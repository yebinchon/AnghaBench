
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_drhd_unit {int dummy; } ;
struct acpi_dmar_header {int dummy; } ;
struct acpi_dmar_hardware_unit {int dummy; } ;


 int ENODEV ;
 struct dmar_drhd_unit* dmar_find_dmaru (struct acpi_dmar_hardware_unit*) ;
 int dmar_iommu_hotplug (struct dmar_drhd_unit*,int) ;
 int dmar_ir_hotplug (struct dmar_drhd_unit*,int) ;

__attribute__((used)) static int dmar_hp_add_drhd(struct acpi_dmar_header *header, void *arg)
{
 int ret;
 struct dmar_drhd_unit *dmaru;

 dmaru = dmar_find_dmaru((struct acpi_dmar_hardware_unit *)header);
 if (!dmaru)
  return -ENODEV;

 ret = dmar_ir_hotplug(dmaru, 1);
 if (ret == 0)
  ret = dmar_iommu_hotplug(dmaru, 1);

 return ret;
}
