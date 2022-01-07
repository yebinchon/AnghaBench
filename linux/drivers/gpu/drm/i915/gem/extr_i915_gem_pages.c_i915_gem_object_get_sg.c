
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void scatterlist ;
struct i915_gem_object_page_iter {unsigned int sg_idx; int radix; int lock; void* sg_pos; } ;
struct TYPE_4__ {unsigned int size; } ;
struct TYPE_3__ {struct i915_gem_object_page_iter get_page; } ;
struct drm_i915_gem_object {TYPE_2__ base; TYPE_1__ mm; } ;


 int EEXIST ;
 int GEM_BUG_ON (int) ;
 int PAGE_SHIFT ;
 unsigned int READ_ONCE (unsigned int) ;
 void* ____sg_next (void*) ;
 unsigned int __sg_page_count (void*) ;
 int i915_gem_object_has_pinned_pages (struct drm_i915_gem_object*) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_insert (int *,unsigned int,void*) ;
 void* radix_tree_lookup (int *,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 int xa_is_value (void*) ;
 void* xa_mk_value (unsigned int) ;
 unsigned long xa_to_value (void*) ;

struct scatterlist *
i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
         unsigned int n,
         unsigned int *offset)
{
 struct i915_gem_object_page_iter *iter = &obj->mm.get_page;
 struct scatterlist *sg;
 unsigned int idx, count;

 might_sleep();
 GEM_BUG_ON(n >= obj->base.size >> PAGE_SHIFT);
 GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
 if (n < READ_ONCE(iter->sg_idx))
  goto lookup;

 mutex_lock(&iter->lock);






 sg = iter->sg_pos;
 idx = iter->sg_idx;
 count = __sg_page_count(sg);

 while (idx + count <= n) {
  void *entry;
  unsigned long i;
  int ret;
  ret = radix_tree_insert(&iter->radix, idx, sg);
  if (ret && ret != -EEXIST)
   goto scan;

  entry = xa_mk_value(idx);
  for (i = 1; i < count; i++) {
   ret = radix_tree_insert(&iter->radix, idx + i, entry);
   if (ret && ret != -EEXIST)
    goto scan;
  }

  idx += count;
  sg = ____sg_next(sg);
  count = __sg_page_count(sg);
 }

scan:
 iter->sg_pos = sg;
 iter->sg_idx = idx;

 mutex_unlock(&iter->lock);

 if (unlikely(n < idx))
  goto lookup;




 while (idx + count <= n) {
  idx += count;
  sg = ____sg_next(sg);
  count = __sg_page_count(sg);
 }

 *offset = n - idx;
 return sg;

lookup:
 rcu_read_lock();

 sg = radix_tree_lookup(&iter->radix, n);
 GEM_BUG_ON(!sg);







 *offset = 0;
 if (unlikely(xa_is_value(sg))) {
  unsigned long base = xa_to_value(sg);

  sg = radix_tree_lookup(&iter->radix, base);
  GEM_BUG_ON(!sg);

  *offset = n - base;
 }

 rcu_read_unlock();

 return sg;
}
