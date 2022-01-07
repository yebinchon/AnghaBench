
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_timeline {scalar_t__ hwsp_cacheline; } ;
struct i915_request {int dummy; } ;


 int __intel_timeline_get_seqno (struct intel_timeline*,struct i915_request*,int *) ;
 int timeline_advance (struct intel_timeline*) ;
 scalar_t__ unlikely (int) ;

int intel_timeline_get_seqno(struct intel_timeline *tl,
        struct i915_request *rq,
        u32 *seqno)
{
 *seqno = timeline_advance(tl);


 if (unlikely(!*seqno && tl->hwsp_cacheline))
  return __intel_timeline_get_seqno(tl, rq, seqno);

 return 0;
}
