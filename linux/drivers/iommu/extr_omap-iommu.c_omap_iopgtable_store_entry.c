
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dummy; } ;
struct iotlb_entry {int da; } ;


 int flush_iotlb_page (struct omap_iommu*,int ) ;
 int iopgtable_store_entry_core (struct omap_iommu*,struct iotlb_entry*) ;
 int prefetch_iotlb_entry (struct omap_iommu*,struct iotlb_entry*) ;

__attribute__((used)) static int
omap_iopgtable_store_entry(struct omap_iommu *obj, struct iotlb_entry *e)
{
 int err;

 flush_iotlb_page(obj, e->da);
 err = iopgtable_store_entry_core(obj, e);
 if (!err)
  prefetch_iotlb_entry(obj, e);
 return err;
}
