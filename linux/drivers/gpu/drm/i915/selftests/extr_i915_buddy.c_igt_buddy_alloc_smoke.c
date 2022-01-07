
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct i915_buddy_mm {int max_order; scalar_t__ size; } ;
struct i915_buddy_block {int link; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct i915_buddy_block*) ;
 int LIST_HEAD (int ) ;
 int PTR_ERR (struct i915_buddy_block*) ;
 int blocks ;
 struct i915_buddy_block* i915_buddy_alloc (struct i915_buddy_mm*,int) ;
 int i915_buddy_block_order (struct i915_buddy_block*) ;
 scalar_t__ i915_buddy_block_size (struct i915_buddy_mm*,struct i915_buddy_block*) ;
 int i915_buddy_fini (struct i915_buddy_mm*) ;
 int i915_buddy_free_list (struct i915_buddy_mm*,int *) ;
 int i915_buddy_init (struct i915_buddy_mm*,scalar_t__,scalar_t__) ;
 int igt_check_blocks (struct i915_buddy_mm*,int *,scalar_t__,int) ;
 int igt_check_mm (struct i915_buddy_mm*) ;
 int igt_mm_config (scalar_t__*,scalar_t__*) ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int,...) ;

__attribute__((used)) static int igt_buddy_alloc_smoke(void *arg)
{
 struct i915_buddy_mm mm;
 int max_order;
 u64 chunk_size;
 u64 mm_size;
 int err;

 igt_mm_config(&mm_size, &chunk_size);

 pr_info("buddy_init with size=%llx, chunk_size=%llx\n", mm_size, chunk_size);

 err = i915_buddy_init(&mm, mm_size, chunk_size);
 if (err) {
  pr_err("buddy_init failed(%d)\n", err);
  return err;
 }

 for (max_order = mm.max_order; max_order >= 0; max_order--) {
  struct i915_buddy_block *block;
  int order;
  LIST_HEAD(blocks);
  u64 total;

  err = igt_check_mm(&mm);
  if (err) {
   pr_err("pre-mm check failed, abort\n");
   break;
  }

  pr_info("filling from max_order=%u\n", max_order);

  order = max_order;
  total = 0;

  do {
retry:
   block = i915_buddy_alloc(&mm, order);
   if (IS_ERR(block)) {
    err = PTR_ERR(block);
    if (err == -ENOMEM) {
     pr_info("buddy_alloc hit -ENOMEM with order=%d\n",
      order);
    } else {
     if (order--) {
      err = 0;
      goto retry;
     }

     pr_err("buddy_alloc with order=%d failed(%d)\n",
            order, err);
    }

    break;
   }

   list_add_tail(&block->link, &blocks);

   if (i915_buddy_block_order(block) != order) {
    pr_err("buddy_alloc order mismatch\n");
    err = -EINVAL;
    break;
   }

   total += i915_buddy_block_size(&mm, block);
  } while (total < mm.size);

  if (!err)
   err = igt_check_blocks(&mm, &blocks, total, 0);

  i915_buddy_free_list(&mm, &blocks);

  if (!err) {
   err = igt_check_mm(&mm);
   if (err)
    pr_err("post-mm check failed\n");
  }

  if (err)
   break;
 }

 if (err == -ENOMEM)
  err = 0;

 i915_buddy_fini(&mm);

 return err;
}
