
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_scratch {int encode; } ;
struct i915_page_directory {int ** entry; } ;


 int GEM_BUG_ON (int) ;
 int atomic_dec (int ) ;
 scalar_t__ atomic_read (int ) ;
 int px_base (struct i915_page_directory* const) ;
 int px_used (struct i915_page_directory* const) ;
 int write_dma_entry (int ,unsigned short const,int ) ;

__attribute__((used)) static inline void
clear_pd_entry(struct i915_page_directory * const pd,
        const unsigned short idx,
        const struct i915_page_scratch * const scratch)
{
 GEM_BUG_ON(atomic_read(px_used(pd)) == 0);

 write_dma_entry(px_base(pd), idx, scratch->encode);
 pd->entry[idx] = ((void*)0);
 atomic_dec(px_used(pd));
}
