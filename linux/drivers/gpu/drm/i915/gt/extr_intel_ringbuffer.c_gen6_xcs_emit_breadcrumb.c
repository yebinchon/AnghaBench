
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int seqno; } ;
struct i915_request {int tail; int ring; TYPE_1__ fence; TYPE_2__* timeline; TYPE_4__* engine; } ;
struct TYPE_7__ {scalar_t__ vma; } ;
struct TYPE_8__ {TYPE_3__ status_page; } ;
struct TYPE_6__ {scalar_t__ hwsp_ggtt; int hwsp_offset; } ;


 int GEM_BUG_ON (int) ;
 int I915_GEM_HWS_SEQNO_ADDR ;
 int MI_FLUSH_DW ;
 int MI_FLUSH_DW_OP_STOREDW ;
 int MI_FLUSH_DW_STORE_INDEX ;
 int MI_FLUSH_DW_USE_GTT ;
 int MI_USER_INTERRUPT ;
 int assert_ring_tail_valid (int ,int ) ;
 int intel_ring_offset (struct i915_request*,int *) ;
 int offset_in_page (int ) ;

__attribute__((used)) static u32 *gen6_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
{
 GEM_BUG_ON(rq->timeline->hwsp_ggtt != rq->engine->status_page.vma);
 GEM_BUG_ON(offset_in_page(rq->timeline->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);

 *cs++ = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
 *cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
 *cs++ = rq->fence.seqno;

 *cs++ = MI_USER_INTERRUPT;

 rq->tail = intel_ring_offset(rq, cs);
 assert_ring_tail_valid(rq->ring, rq->tail);

 return cs;
}
