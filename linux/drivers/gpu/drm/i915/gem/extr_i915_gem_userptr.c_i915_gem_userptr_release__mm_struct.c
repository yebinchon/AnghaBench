
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int dev; } ;
struct drm_i915_gem_object {TYPE_3__ userptr; TYPE_1__ base; } ;
struct TYPE_8__ {int mm_lock; } ;
struct TYPE_6__ {int kref; } ;


 int __i915_mm_struct_free ;
 int kref_put_mutex (int *,int ,int *) ;
 TYPE_4__* to_i915 (int ) ;

__attribute__((used)) static void
i915_gem_userptr_release__mm_struct(struct drm_i915_gem_object *obj)
{
 if (obj->userptr.mm == ((void*)0))
  return;

 kref_put_mutex(&obj->userptr.mm->kref,
         __i915_mm_struct_free,
         &to_i915(obj->base.dev)->mm_lock);
 obj->userptr.mm = ((void*)0);
}
