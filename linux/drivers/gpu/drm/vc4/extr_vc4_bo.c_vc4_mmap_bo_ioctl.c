
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vc4_mmap_bo {int offset; int handle; } ;
struct drm_gem_object {int vma_node; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;

int vc4_mmap_bo_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_vc4_mmap_bo *args = data;
 struct drm_gem_object *gem_obj;

 gem_obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!gem_obj) {
  DRM_DEBUG("Failed to look up GEM BO %d\n", args->handle);
  return -EINVAL;
 }


 args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);

 drm_gem_object_put_unlocked(gem_obj);
 return 0;
}
