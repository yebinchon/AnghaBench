
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_vma {TYPE_2__* obj; } ;
struct TYPE_3__ {int refcount; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int kref_get_unless_zero (int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline struct i915_vma *i915_vma_tryget(struct i915_vma *vma)
{
 if (likely(kref_get_unless_zero(&vma->obj->base.refcount)))
  return vma;

 return ((void*)0);
}
