
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int (* allocate_va_range ) (TYPE_1__*,int,int) ;int (* clear_range ) (TYPE_1__*,int ,int) ;int total; } ;
struct i915_ppgtt {TYPE_1__ vm; } ;
struct drm_i915_private {int dummy; } ;


 int ENOMEM ;
 int HAS_PPGTT (struct drm_i915_private*) ;
 scalar_t__ IS_ERR (struct i915_ppgtt*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct i915_ppgtt*) ;
 struct i915_ppgtt* __ppgtt_create (struct drm_i915_private*) ;
 int cond_resched () ;
 int i915_vm_put (TYPE_1__*) ;
 int ilog2 (int) ;
 int min (int ,int) ;
 int pr_info (char*,int,int,...) ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int ,int) ;
 int stub3 (TYPE_1__*,int,int) ;
 int totalram_pages () ;

__attribute__((used)) static int igt_ppgtt_alloc(void *arg)
{
 struct drm_i915_private *dev_priv = arg;
 struct i915_ppgtt *ppgtt;
 u64 size, last, limit;
 int err = 0;



 if (!HAS_PPGTT(dev_priv))
  return 0;

 ppgtt = __ppgtt_create(dev_priv);
 if (IS_ERR(ppgtt))
  return PTR_ERR(ppgtt);

 if (!ppgtt->vm.allocate_va_range)
  goto err_ppgtt_cleanup;
 limit = totalram_pages() << PAGE_SHIFT;
 limit = min(ppgtt->vm.total, limit);


 for (size = 4096; size <= limit; size <<= 2) {
  err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, size);
  if (err) {
   if (err == -ENOMEM) {
    pr_info("[1] Ran out of memory for va_range [0 + %llx] [bit %d]\n",
     size, ilog2(size));
    err = 0;
   }
   goto err_ppgtt_cleanup;
  }

  cond_resched();

  ppgtt->vm.clear_range(&ppgtt->vm, 0, size);
 }


 for (last = 0, size = 4096; size <= limit; last = size, size <<= 2) {
  err = ppgtt->vm.allocate_va_range(&ppgtt->vm,
        last, size - last);
  if (err) {
   if (err == -ENOMEM) {
    pr_info("[2] Ran out of memory for va_range [%llx + %llx] [bit %d]\n",
     last, size - last, ilog2(size));
    err = 0;
   }
   goto err_ppgtt_cleanup;
  }

  cond_resched();
 }

err_ppgtt_cleanup:
 i915_vm_put(&ppgtt->vm);
 return err;
}
