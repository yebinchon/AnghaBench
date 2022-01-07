
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline_cacheline {int active; int vaddr; } ;


 int CACHELINE_FREE ;
 int GEM_BUG_ON (int ) ;
 int __idle_cacheline_free (struct intel_timeline_cacheline*) ;
 scalar_t__ i915_active_is_idle (int *) ;
 int ptr_set_bit (int ,int ) ;
 int ptr_test_bit (int ,int ) ;

__attribute__((used)) static void cacheline_free(struct intel_timeline_cacheline *cl)
{
 GEM_BUG_ON(ptr_test_bit(cl->vaddr, CACHELINE_FREE));
 cl->vaddr = ptr_set_bit(cl->vaddr, CACHELINE_FREE);

 if (i915_active_is_idle(&cl->active))
  __idle_cacheline_free(cl);
}
