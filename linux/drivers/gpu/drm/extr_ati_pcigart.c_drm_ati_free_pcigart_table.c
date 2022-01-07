
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_ati_pcigart_info {int * table_handle; } ;


 int drm_pci_free (struct drm_device*,int *) ;

__attribute__((used)) static void drm_ati_free_pcigart_table(struct drm_device *dev,
           struct drm_ati_pcigart_info *gart_info)
{
 drm_pci_free(dev, gart_info->table_handle);
 gart_info->table_handle = ((void*)0);
}
