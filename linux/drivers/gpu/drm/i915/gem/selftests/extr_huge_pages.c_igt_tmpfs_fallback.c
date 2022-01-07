
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vfsmount {int dummy; } ;
typedef int i915_vma ;
struct i915_gem_context {int vm; struct drm_i915_private* i915; } ;
struct i915_address_space {int dummy; } ;
struct TYPE_4__ {struct vfsmount* gemfs; } ;
struct TYPE_3__ {struct i915_address_space vm; } ;
struct drm_i915_private {TYPE_2__ mm; TYPE_1__ ggtt; } ;
typedef int drm_i915_gem_object ;


 int I915_MAP_WB ;
 scalar_t__ IS_ERR (int*) ;
 int PAGE_SIZE ;
 int PIN_USER ;
 int PTR_ERR (int*) ;
 int __i915_gem_object_flush_map (int*,int ,int) ;
 int* i915_gem_object_create_shmem (struct drm_i915_private*,int ) ;
 int* i915_gem_object_pin_map (int*,int ) ;
 int i915_gem_object_put (int*) ;
 int i915_gem_object_unpin_map (int*) ;
 int i915_vma_close (int*) ;
 int* i915_vma_instance (int*,struct i915_address_space*,int *) ;
 int i915_vma_pin (int*,int ,int ,int ) ;
 int i915_vma_unpin (int*) ;
 int igt_check_page_sizes (int*) ;

__attribute__((used)) static int igt_tmpfs_fallback(void *arg)
{
 struct i915_gem_context *ctx = arg;
 struct drm_i915_private *i915 = ctx->i915;
 struct vfsmount *gemfs = i915->mm.gemfs;
 struct i915_address_space *vm = ctx->vm ?: &i915->ggtt.vm;
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 u32 *vaddr;
 int err = 0;







 i915->mm.gemfs = ((void*)0);

 obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  goto out_restore;
 }

 vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
 if (IS_ERR(vaddr)) {
  err = PTR_ERR(vaddr);
  goto out_put;
 }
 *vaddr = 0xdeadbeaf;

 __i915_gem_object_flush_map(obj, 0, 64);
 i915_gem_object_unpin_map(obj);

 vma = i915_vma_instance(obj, vm, ((void*)0));
 if (IS_ERR(vma)) {
  err = PTR_ERR(vma);
  goto out_put;
 }

 err = i915_vma_pin(vma, 0, 0, PIN_USER);
 if (err)
  goto out_close;

 err = igt_check_page_sizes(vma);

 i915_vma_unpin(vma);
out_close:
 i915_vma_close(vma);
out_put:
 i915_gem_object_put(obj);
out_restore:
 i915->mm.gemfs = gemfs;

 return err;
}
