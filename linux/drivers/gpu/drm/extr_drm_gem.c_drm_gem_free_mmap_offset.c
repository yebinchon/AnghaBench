
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int vma_node; struct drm_device* dev; } ;
struct drm_device {int vma_offset_manager; } ;


 int drm_vma_offset_remove (int ,int *) ;

void
drm_gem_free_mmap_offset(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;

 drm_vma_offset_remove(dev->vma_offset_manager, &obj->vma_node);
}
