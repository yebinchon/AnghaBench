
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct drm_gem_object {int vma_node; int filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;

__attribute__((used)) static int vgem_gem_dumb_map(struct drm_file *file, struct drm_device *dev,
        uint32_t handle, uint64_t *offset)
{
 struct drm_gem_object *obj;
 int ret;

 obj = drm_gem_object_lookup(file, handle);
 if (!obj)
  return -ENOENT;

 if (!obj->filp) {
  ret = -EINVAL;
  goto unref;
 }

 ret = drm_gem_create_mmap_offset(obj);
 if (ret)
  goto unref;

 *offset = drm_vma_node_offset_addr(&obj->vma_node);
unref:
 drm_gem_object_put_unlocked(obj);

 return ret;
}
