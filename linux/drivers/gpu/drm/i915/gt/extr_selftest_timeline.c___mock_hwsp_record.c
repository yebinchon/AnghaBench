
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mock_hwsp_freelist {int cachelines; int * history; } ;
struct intel_timeline {int dummy; } ;


 int hwsp_cacheline (struct intel_timeline*) ;
 int intel_timeline_put (struct intel_timeline*) ;
 int radix_tree_delete (int *,int ) ;
 struct intel_timeline* xchg (int *,struct intel_timeline*) ;

__attribute__((used)) static void __mock_hwsp_record(struct mock_hwsp_freelist *state,
          unsigned int idx,
          struct intel_timeline *tl)
{
 tl = xchg(&state->history[idx], tl);
 if (tl) {
  radix_tree_delete(&state->cachelines, hwsp_cacheline(tl));
  intel_timeline_put(tl);
 }
}
