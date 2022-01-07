
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* agp; } ;
struct drm_agp_mem {int pages; int memory; int head; scalar_t__ bound; } ;
struct drm_agp_buffer {int handle; } ;
struct TYPE_2__ {int acquired; } ;


 int EINVAL ;
 struct drm_agp_mem* drm_agp_lookup_entry (struct drm_device*,int ) ;
 int drm_free_agp (int ,int ) ;
 int drm_unbind_agp (int ) ;
 int kfree (struct drm_agp_mem*) ;
 int list_del (int *) ;

int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
{
 struct drm_agp_mem *entry;

 if (!dev->agp || !dev->agp->acquired)
  return -EINVAL;
 entry = drm_agp_lookup_entry(dev, request->handle);
 if (!entry)
  return -EINVAL;
 if (entry->bound)
  drm_unbind_agp(entry->memory);

 list_del(&entry->head);

 drm_free_agp(entry->memory, entry->pages);
 kfree(entry);
 return 0;
}
