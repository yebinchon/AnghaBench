
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_gem_object {int vma_node; scalar_t__ import_attach; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;

int drm_gem_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
       u32 handle, u64 *offset)
{
 struct drm_gem_object *obj;
 int ret;

 obj = drm_gem_object_lookup(file, handle);
 if (!obj)
  return -ENOENT;


 if (obj->import_attach) {
  ret = -EINVAL;
  goto out;
 }

 ret = drm_gem_create_mmap_offset(obj);
 if (ret)
  goto out;

 *offset = drm_vma_node_offset_addr(&obj->vma_node);
out:
 drm_gem_object_put_unlocked(obj);

 return ret;
}
