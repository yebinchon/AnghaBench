
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct i915_vma {int dummy; } ;
struct TYPE_2__ {int probability; int interval; int times; } ;
struct i915_address_space {TYPE_1__ fault_attr; } ;
struct drm_i915_private {int dummy; } ;
typedef struct i915_vma drm_i915_gem_object ;


 int ARRAY_SIZE (unsigned int*) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 unsigned int PIN_OFFSET_FIXED ;
 unsigned int PIN_USER ;
 int PTR_ERR (struct i915_vma*) ;
 unsigned int SZ_1G ;
 unsigned int SZ_2M ;
 int atomic_set (int *,int) ;
 int cleanup_freed_objects (struct drm_i915_private*) ;
 struct i915_vma* fake_dma_object (struct drm_i915_private*,unsigned int) ;
 int i915_gem_object_put (struct i915_vma*) ;
 struct i915_vma* i915_vma_instance (struct i915_vma*,struct i915_address_space*,int *) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,unsigned int) ;
 int i915_vma_unpin (struct i915_vma*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int shrink_boom(struct drm_i915_private *i915,
         struct i915_address_space *vm,
         u64 hole_start, u64 hole_end,
         unsigned long end_time)
{
 unsigned int sizes[] = { SZ_2M, SZ_1G };
 struct drm_i915_gem_object *purge;
 struct drm_i915_gem_object *explode;
 int err;
 int i;
 for (i = 0; i < ARRAY_SIZE(sizes); ++i) {
  unsigned int flags = PIN_USER | PIN_OFFSET_FIXED;
  unsigned int size = sizes[i];
  struct i915_vma *vma;

  purge = fake_dma_object(i915, size);
  if (IS_ERR(purge))
   return PTR_ERR(purge);

  vma = i915_vma_instance(purge, vm, ((void*)0));
  if (IS_ERR(vma)) {
   err = PTR_ERR(vma);
   goto err_purge;
  }

  err = i915_vma_pin(vma, 0, 0, flags);
  if (err)
   goto err_purge;


  i915_vma_unpin(vma);

  explode = fake_dma_object(i915, size);
  if (IS_ERR(explode)) {
   err = PTR_ERR(explode);
   goto err_purge;
  }

  vm->fault_attr.probability = 100;
  vm->fault_attr.interval = 1;
  atomic_set(&vm->fault_attr.times, -1);

  vma = i915_vma_instance(explode, vm, ((void*)0));
  if (IS_ERR(vma)) {
   err = PTR_ERR(vma);
   goto err_explode;
  }

  err = i915_vma_pin(vma, 0, 0, flags | size);
  if (err)
   goto err_explode;

  i915_vma_unpin(vma);

  i915_gem_object_put(purge);
  i915_gem_object_put(explode);

  memset(&vm->fault_attr, 0, sizeof(vm->fault_attr));
  cleanup_freed_objects(i915);
 }

 return 0;

err_explode:
 i915_gem_object_put(explode);
err_purge:
 i915_gem_object_put(purge);
 memset(&vm->fault_attr, 0, sizeof(vm->fault_attr));
 return err;
}
