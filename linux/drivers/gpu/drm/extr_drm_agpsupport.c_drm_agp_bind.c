
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* agp; } ;
struct drm_agp_mem {scalar_t__ bound; int memory; } ;
struct drm_agp_binding {int offset; int handle; } ;
struct TYPE_2__ {scalar_t__ base; int acquired; } ;


 int DRM_DEBUG (char*,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 struct drm_agp_mem* drm_agp_lookup_entry (struct drm_device*,int ) ;
 int drm_bind_agp (int ,int) ;

int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
{
 struct drm_agp_mem *entry;
 int retcode;
 int page;

 if (!dev->agp || !dev->agp->acquired)
  return -EINVAL;
 entry = drm_agp_lookup_entry(dev, request->handle);
 if (!entry || entry->bound)
  return -EINVAL;
 page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
 retcode = drm_bind_agp(entry->memory, page);
 if (retcode)
  return retcode;
 entry->bound = dev->agp->base + (page << PAGE_SHIFT);
 DRM_DEBUG("base = 0x%lx entry->bound = 0x%lx\n",
    dev->agp->base, entry->bound);
 return 0;
}
