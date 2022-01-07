
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct i915_vma {int * ops; struct i915_sleeve* private; } ;
struct i915_page_sizes {int dummy; } ;
struct i915_sleeve {struct i915_page_sizes page_sizes; struct sg_table* pages; struct i915_vma* vma; } ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 int ENOMEM ;
 struct i915_sleeve* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PTR_ERR (struct i915_vma*) ;
 struct i915_vma* i915_vma_instance (struct drm_i915_gem_object*,struct i915_address_space*,int *) ;
 int kfree (struct i915_sleeve*) ;
 struct i915_sleeve* kzalloc (int,int ) ;
 int proxy_vma_ops ;

__attribute__((used)) static struct i915_sleeve *create_sleeve(struct i915_address_space *vm,
      struct drm_i915_gem_object *obj,
      struct sg_table *pages,
      struct i915_page_sizes *page_sizes)
{
 struct i915_sleeve *sleeve;
 struct i915_vma *vma;
 int err;

 sleeve = kzalloc(sizeof(*sleeve), GFP_KERNEL);
 if (!sleeve)
  return ERR_PTR(-ENOMEM);

 vma = i915_vma_instance(obj, vm, ((void*)0));
 if (IS_ERR(vma)) {
  err = PTR_ERR(vma);
  goto err_free;
 }

 vma->private = sleeve;
 vma->ops = &proxy_vma_ops;

 sleeve->vma = vma;
 sleeve->pages = pages;
 sleeve->page_sizes = *page_sizes;

 return sleeve;

err_free:
 kfree(sleeve);
 return ERR_PTR(err);
}
