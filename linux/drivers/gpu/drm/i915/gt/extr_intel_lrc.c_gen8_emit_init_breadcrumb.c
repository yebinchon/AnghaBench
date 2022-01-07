
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int seqno; } ;
struct i915_request {int infix; TYPE_1__ fence; TYPE_2__* timeline; } ;
struct TYPE_4__ {int hwsp_offset; int has_initial_breadcrumb; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ IS_ERR (int *) ;
 int MI_ARB_CHECK ;
 int MI_NOOP ;
 int MI_STORE_DWORD_IMM_GEN4 ;
 int MI_USE_GGTT ;
 int PTR_ERR (int *) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 int intel_ring_offset (struct i915_request*,int *) ;

__attribute__((used)) static int gen8_emit_init_breadcrumb(struct i915_request *rq)
{
 u32 *cs;

 GEM_BUG_ON(!rq->timeline->has_initial_breadcrumb);

 cs = intel_ring_begin(rq, 6);
 if (IS_ERR(cs))
  return PTR_ERR(cs);







 *cs++ = MI_ARB_CHECK;
 *cs++ = MI_NOOP;

 *cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 *cs++ = rq->timeline->hwsp_offset;
 *cs++ = 0;
 *cs++ = rq->fence.seqno - 1;

 intel_ring_advance(rq, cs);


 rq->infix = intel_ring_offset(rq, cs);

 return 0;
}
