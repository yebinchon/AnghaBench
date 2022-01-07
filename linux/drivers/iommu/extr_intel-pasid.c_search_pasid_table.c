
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasid_table_opaque {scalar_t__ segment; scalar_t__ bus; scalar_t__ devfn; scalar_t__* pasid_table; } ;
struct device_domain_info {scalar_t__ bus; scalar_t__ devfn; scalar_t__ pasid_table; TYPE_1__* iommu; } ;
struct TYPE_2__ {scalar_t__ segment; } ;



__attribute__((used)) static int search_pasid_table(struct device_domain_info *info, void *opaque)
{
 struct pasid_table_opaque *data = opaque;

 if (info->iommu->segment == data->segment &&
     info->bus == data->bus &&
     info->devfn == data->devfn &&
     info->pasid_table) {
  *data->pasid_table = info->pasid_table;
  return 1;
 }

 return 0;
}
