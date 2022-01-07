
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_table {int used; } ;
struct i915_page_scratch {int dummy; } ;
struct i915_page_directory {int lock; } ;


 scalar_t__ atomic_add_unless (int *,int,int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int clear_pd_entry (struct i915_page_directory* const,unsigned short const,struct i915_page_scratch const* const) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool
release_pd_entry(struct i915_page_directory * const pd,
   const unsigned short idx,
   struct i915_page_table * const pt,
   const struct i915_page_scratch * const scratch)
{
 bool free = 0;

 if (atomic_add_unless(&pt->used, -1, 1))
  return 0;

 spin_lock(&pd->lock);
 if (atomic_dec_and_test(&pt->used)) {
  clear_pd_entry(pd, idx, scratch);
  free = 1;
 }
 spin_unlock(&pd->lock);

 return free;
}
