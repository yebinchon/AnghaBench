
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {uintptr_t ptr; int ro; int mm; } ;
struct etnaviv_gem_object {int base; TYPE_1__ userptr; int lock; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int mm; } ;


 int ETNA_BO_CACHED ;
 int ETNA_USERPTR_WRITE ;
 TYPE_2__* current ;
 int drm_gem_handle_create (struct drm_file*,int *,int*) ;
 int drm_gem_object_put_unlocked (int *) ;
 int etnaviv_gem_new_private (struct drm_device*,int,int ,int *,struct etnaviv_gem_object**) ;
 int etnaviv_gem_obj_add (struct drm_device*,int *) ;
 int etnaviv_gem_userptr_ops ;
 int etnaviv_userptr_lock_class ;
 int lockdep_set_class (int *,int *) ;

int etnaviv_gem_new_userptr(struct drm_device *dev, struct drm_file *file,
 uintptr_t ptr, u32 size, u32 flags, u32 *handle)
{
 struct etnaviv_gem_object *etnaviv_obj;
 int ret;

 ret = etnaviv_gem_new_private(dev, size, ETNA_BO_CACHED,
          &etnaviv_gem_userptr_ops, &etnaviv_obj);
 if (ret)
  return ret;

 lockdep_set_class(&etnaviv_obj->lock, &etnaviv_userptr_lock_class);

 etnaviv_obj->userptr.ptr = ptr;
 etnaviv_obj->userptr.mm = current->mm;
 etnaviv_obj->userptr.ro = !(flags & ETNA_USERPTR_WRITE);

 etnaviv_gem_obj_add(dev, &etnaviv_obj->base);

 ret = drm_gem_handle_create(file, &etnaviv_obj->base, handle);


 drm_gem_object_put_unlocked(&etnaviv_obj->base);
 return ret;
}
