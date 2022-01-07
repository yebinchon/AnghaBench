
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_gem_object {int vma_node; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int dev_err (int ,char*) ;
 int drm_gem_create_mmap_offset_size (struct drm_gem_object*,size_t) ;
 int drm_vma_node_offset_addr (int *) ;
 size_t omap_gem_mmap_size (struct drm_gem_object*) ;

u64 omap_gem_mmap_offset(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 int ret;
 size_t size;


 size = omap_gem_mmap_size(obj);
 ret = drm_gem_create_mmap_offset_size(obj, size);
 if (ret) {
  dev_err(dev->dev, "could not allocate mmap offset\n");
  return 0;
 }

 return drm_vma_node_offset_addr(&obj->vma_node);
}
