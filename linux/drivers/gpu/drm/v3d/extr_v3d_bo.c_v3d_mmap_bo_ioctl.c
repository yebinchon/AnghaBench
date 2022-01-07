
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_v3d_mmap_bo {scalar_t__ flags; int offset; int handle; } ;
struct drm_gem_object {int vma_node; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_INFO (char*,scalar_t__) ;
 int EINVAL ;
 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;

int v3d_mmap_bo_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_v3d_mmap_bo *args = data;
 struct drm_gem_object *gem_obj;

 if (args->flags != 0) {
  DRM_INFO("unknown mmap_bo flags: %d\n", args->flags);
  return -EINVAL;
 }

 gem_obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!gem_obj) {
  DRM_DEBUG("Failed to look up GEM BO %d\n", args->handle);
  return -ENOENT;
 }

 args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
 drm_gem_object_put_unlocked(gem_obj);

 return 0;
}
