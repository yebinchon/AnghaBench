
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dummy; } ;
struct iotlb_entry {int dummy; } ;


 int load_iotlb_entry (struct omap_iommu*,struct iotlb_entry*) ;

__attribute__((used)) static int prefetch_iotlb_entry(struct omap_iommu *obj, struct iotlb_entry *e)
{
 return load_iotlb_entry(obj, e);
}
