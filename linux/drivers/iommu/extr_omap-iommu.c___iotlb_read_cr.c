
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dummy; } ;
struct iotlb_lock {int vict; } ;
struct cr_regs {int dummy; } ;


 int iotlb_lock_get (struct omap_iommu*,struct iotlb_lock*) ;
 int iotlb_lock_set (struct omap_iommu*,struct iotlb_lock*) ;
 int iotlb_read_cr (struct omap_iommu*,struct cr_regs*) ;

struct cr_regs __iotlb_read_cr(struct omap_iommu *obj, int n)
{
 struct cr_regs cr;
 struct iotlb_lock l;

 iotlb_lock_get(obj, &l);
 l.vict = n;
 iotlb_lock_set(obj, &l);
 iotlb_read_cr(obj, &cr);

 return cr;
}
