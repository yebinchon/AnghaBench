
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct i915_syncmap {int dummy; } ;


 int EINVAL ;
 int HZ ;
 int I915_RND_STATE (int ) ;
 int IGT_TIMEOUT (int ) ;
 int __igt_timeout (int ,int *) ;
 int ctx ;
 int dump_syncmap (struct i915_syncmap*,int) ;
 int end_time ;
 int i915_prandom_u64_state (int *) ;
 int i915_syncmap_init (struct i915_syncmap**) ;
 int i915_syncmap_is_later (struct i915_syncmap**,int ,scalar_t__) ;
 int i915_syncmap_set (struct i915_syncmap**,int ,scalar_t__) ;
 int jiffies ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int pr_err (char*,int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ prandom_u32_state (int *) ;
 int prng ;
 int seqno_later (scalar_t__,scalar_t__) ;
 int time_after (int,unsigned long) ;

__attribute__((used)) static int igt_syncmap_random(void *arg)
{
 I915_RND_STATE(prng);
 IGT_TIMEOUT(end_time);
 struct i915_syncmap *sync;
 unsigned long count, phase, i;
 u32 seqno;
 int err;

 i915_syncmap_init(&sync);







 count = 0;
 phase = jiffies + HZ/100 + 1;
 do {
  u64 context = i915_prandom_u64_state(&prng);

  err = i915_syncmap_set(&sync, context, 0);
  if (err)
   goto out;

  count++;
 } while (!time_after(jiffies, phase));
 seqno = 0;

 phase = 0;
 do {
  I915_RND_STATE(ctx);
  u32 last_seqno = seqno;
  bool expect;

  seqno = prandom_u32_state(&prng);
  expect = seqno_later(last_seqno, seqno);

  for (i = 0; i < count; i++) {
   u64 context = i915_prandom_u64_state(&ctx);

   if (i915_syncmap_is_later(&sync, context, seqno) != expect) {
    pr_err("context=%llu, last=%u this=%u did not match expectation (%d)\n",
           context, last_seqno, seqno, expect);
    err = -EINVAL;
    goto out;
   }

   err = i915_syncmap_set(&sync, context, seqno);
   if (err)
    goto out;
  }

  phase++;
 } while (!__igt_timeout(end_time, ((void*)0)));
 pr_debug("Completed %lu passes, each of %lu contexts\n", phase, count);
out:
 return dump_syncmap(sync, err);
}
