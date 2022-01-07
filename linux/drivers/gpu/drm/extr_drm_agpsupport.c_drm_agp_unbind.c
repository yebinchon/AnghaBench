
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* agp; } ;
struct drm_agp_mem {scalar_t__ bound; int memory; } ;
struct drm_agp_binding {int handle; } ;
struct TYPE_2__ {int acquired; } ;


 int EINVAL ;
 struct drm_agp_mem* drm_agp_lookup_entry (struct drm_device*,int ) ;
 int drm_unbind_agp (int ) ;

int drm_agp_unbind(struct drm_device *dev, struct drm_agp_binding *request)
{
 struct drm_agp_mem *entry;
 int ret;

 if (!dev->agp || !dev->agp->acquired)
  return -EINVAL;
 entry = drm_agp_lookup_entry(dev, request->handle);
 if (!entry || !entry->bound)
  return -EINVAL;
 ret = drm_unbind_agp(entry->memory);
 if (ret == 0)
  entry->bound = 0;
 return ret;
}
