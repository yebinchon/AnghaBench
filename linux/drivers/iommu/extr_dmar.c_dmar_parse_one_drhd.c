
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_drhd_unit {int include_all; scalar_t__ devices_cnt; int * devices; int segment; int reg_base_addr; void* hdr; } ;
struct acpi_dmar_header {scalar_t__ length; } ;
struct TYPE_2__ {int length; } ;
struct acpi_dmar_hardware_unit {int flags; TYPE_1__ header; int segment; int address; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_iommu (struct dmar_drhd_unit*) ;
 int * dmar_alloc_dev_scope (void*,void*,scalar_t__*) ;
 struct dmar_drhd_unit* dmar_find_dmaru (struct acpi_dmar_hardware_unit*) ;
 int dmar_free_dev_scope (int **,scalar_t__*) ;
 int dmar_register_drhd_unit (struct dmar_drhd_unit*) ;
 int kfree (struct dmar_drhd_unit*) ;
 struct dmar_drhd_unit* kzalloc (scalar_t__,int ) ;
 int memcpy (void*,struct acpi_dmar_header*,scalar_t__) ;

__attribute__((used)) static int dmar_parse_one_drhd(struct acpi_dmar_header *header, void *arg)
{
 struct acpi_dmar_hardware_unit *drhd;
 struct dmar_drhd_unit *dmaru;
 int ret;

 drhd = (struct acpi_dmar_hardware_unit *)header;
 dmaru = dmar_find_dmaru(drhd);
 if (dmaru)
  goto out;

 dmaru = kzalloc(sizeof(*dmaru) + header->length, GFP_KERNEL);
 if (!dmaru)
  return -ENOMEM;





 dmaru->hdr = (void *)(dmaru + 1);
 memcpy(dmaru->hdr, header, header->length);
 dmaru->reg_base_addr = drhd->address;
 dmaru->segment = drhd->segment;
 dmaru->include_all = drhd->flags & 0x1;
 dmaru->devices = dmar_alloc_dev_scope((void *)(drhd + 1),
           ((void *)drhd) + drhd->header.length,
           &dmaru->devices_cnt);
 if (dmaru->devices_cnt && dmaru->devices == ((void*)0)) {
  kfree(dmaru);
  return -ENOMEM;
 }

 ret = alloc_iommu(dmaru);
 if (ret) {
  dmar_free_dev_scope(&dmaru->devices,
        &dmaru->devices_cnt);
  kfree(dmaru);
  return ret;
 }
 dmar_register_drhd_unit(dmaru);

out:
 if (arg)
  (*(int *)arg)++;

 return 0;
}
