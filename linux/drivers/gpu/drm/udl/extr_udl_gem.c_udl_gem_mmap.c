
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int vma_node; } ;
struct udl_gem_object {TYPE_1__ base; } ;
struct udl_device {int gem_lock; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (TYPE_1__*) ;
 int drm_vma_node_offset_addr (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct udl_device* to_udl (struct drm_device*) ;
 struct udl_gem_object* to_udl_bo (struct drm_gem_object*) ;
 int udl_gem_get_pages (struct udl_gem_object*) ;

int udl_gem_mmap(struct drm_file *file, struct drm_device *dev,
   uint32_t handle, uint64_t *offset)
{
 struct udl_gem_object *gobj;
 struct drm_gem_object *obj;
 struct udl_device *udl = to_udl(dev);
 int ret = 0;

 mutex_lock(&udl->gem_lock);
 obj = drm_gem_object_lookup(file, handle);
 if (obj == ((void*)0)) {
  ret = -ENOENT;
  goto unlock;
 }
 gobj = to_udl_bo(obj);

 ret = udl_gem_get_pages(gobj);
 if (ret)
  goto out;
 ret = drm_gem_create_mmap_offset(obj);
 if (ret)
  goto out;

 *offset = drm_vma_node_offset_addr(&gobj->base.vma_node);

out:
 drm_gem_object_put_unlocked(&gobj->base);
unlock:
 mutex_unlock(&udl->gem_lock);
 return ret;
}
