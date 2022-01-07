
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int vma_node; struct drm_device* dev; } ;
struct drm_device {int vma_offset_manager; } ;


 size_t PAGE_SIZE ;
 int drm_vma_offset_add (int ,int *,size_t) ;

int
drm_gem_create_mmap_offset_size(struct drm_gem_object *obj, size_t size)
{
 struct drm_device *dev = obj->dev;

 return drm_vma_offset_add(dev->vma_offset_manager, &obj->vma_node,
      size / PAGE_SIZE);
}
