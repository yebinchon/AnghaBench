
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_address_space {struct drm_i915_private* i915; } ;
struct evict_vma {int completion; TYPE_2__* vma; } ;
struct drm_mm_node {int dummy; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {struct drm_mm_node node; struct i915_address_space* vm; } ;


 int complete (int *) ;
 int i915_gem_evict_for_node (struct i915_address_space*,struct drm_mm_node*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int evict_vma(void *data)
{
 struct evict_vma *arg = data;
 struct i915_address_space *vm = arg->vma->vm;
 struct drm_i915_private *i915 = vm->i915;
 struct drm_mm_node evict = arg->vma->node;
 int err;

 complete(&arg->completion);

 mutex_lock(&i915->drm.struct_mutex);
 err = i915_gem_evict_for_node(vm, &evict, 0);
 mutex_unlock(&i915->drm.struct_mutex);

 return err;
}
