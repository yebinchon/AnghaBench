
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_vma {TYPE_2__* vm; int vm_link; int pages; struct drm_i915_gem_object* obj; } ;
struct TYPE_3__ {int pages; } ;
struct drm_i915_gem_object {TYPE_1__ mm; int bind_count; } ;
struct TYPE_4__ {int mutex; int bound_list; } ;


 int __i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int atomic_inc (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void track_vma_bind(struct i915_vma *vma)
{
 struct drm_i915_gem_object *obj = vma->obj;

 atomic_inc(&obj->bind_count);
 __i915_gem_object_pin_pages(obj);

 vma->pages = obj->mm.pages;

 mutex_lock(&vma->vm->mutex);
 list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 mutex_unlock(&vma->vm->mutex);
}
