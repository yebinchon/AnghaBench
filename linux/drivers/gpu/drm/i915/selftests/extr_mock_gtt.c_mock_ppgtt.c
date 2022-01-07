
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clear_pages; int set_pages; int unbind_vma; int bind_vma; } ;
struct TYPE_4__ {TYPE_1__ vma_ops; int cleanup; int insert_entries; int insert_page; int clear_range; int file; int total; struct drm_i915_private* i915; } ;
struct i915_ppgtt {TYPE_2__ vm; } ;
struct drm_i915_private {int dummy; } ;


 int ENODEV ;
 int ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int U64_MAX ;
 int VM_CLASS_PPGTT ;
 int clear_pages ;
 int i915_address_space_init (TYPE_2__*,int ) ;
 struct i915_ppgtt* kzalloc (int,int ) ;
 int mock_bind_ppgtt ;
 int mock_cleanup ;
 int mock_insert_entries ;
 int mock_insert_page ;
 int mock_unbind_ppgtt ;
 int nop_clear_range ;
 int ppgtt_set_pages ;
 int round_down (int ,int ) ;

struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
{
 struct i915_ppgtt *ppgtt;

 ppgtt = kzalloc(sizeof(*ppgtt), GFP_KERNEL);
 if (!ppgtt)
  return ((void*)0);

 ppgtt->vm.i915 = i915;
 ppgtt->vm.total = round_down(U64_MAX, PAGE_SIZE);
 ppgtt->vm.file = ERR_PTR(-ENODEV);

 i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);

 ppgtt->vm.clear_range = nop_clear_range;
 ppgtt->vm.insert_page = mock_insert_page;
 ppgtt->vm.insert_entries = mock_insert_entries;
 ppgtt->vm.cleanup = mock_cleanup;

 ppgtt->vm.vma_ops.bind_vma = mock_bind_ppgtt;
 ppgtt->vm.vma_ops.unbind_vma = mock_unbind_ppgtt;
 ppgtt->vm.vma_ops.set_pages = ppgtt_set_pages;
 ppgtt->vm.vma_ops.clear_pages = clear_pages;

 return ppgtt;
}
