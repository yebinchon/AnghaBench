
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ seqno; } ;
struct i915_request {int tail; int ring; TYPE_4__ fence; TYPE_3__* timeline; TYPE_2__* engine; } ;
struct TYPE_7__ {scalar_t__ hwsp_ggtt; int hwsp_offset; } ;
struct TYPE_5__ {scalar_t__ vma; } ;
struct TYPE_6__ {TYPE_1__ status_page; } ;


 int BUILD_BUG_ON (int) ;
 int GEM_BUG_ON (int) ;
 int GEN5_WA_STORES ;
 scalar_t__ I915_GEM_HWS_SEQNO_ADDR ;
 int MI_FLUSH ;
 int MI_STORE_DWORD_INDEX ;
 scalar_t__ MI_USER_INTERRUPT ;
 int assert_ring_tail_valid (int ,int ) ;
 int intel_ring_offset (struct i915_request*,int *) ;
 scalar_t__ offset_in_page (int ) ;

__attribute__((used)) static u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
{
 int i;

 GEM_BUG_ON(rq->timeline->hwsp_ggtt != rq->engine->status_page.vma);
 GEM_BUG_ON(offset_in_page(rq->timeline->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);

 *cs++ = MI_FLUSH;

 BUILD_BUG_ON(GEN5_WA_STORES < 1);
 for (i = 0; i < GEN5_WA_STORES; i++) {
  *cs++ = MI_STORE_DWORD_INDEX;
  *cs++ = I915_GEM_HWS_SEQNO_ADDR;
  *cs++ = rq->fence.seqno;
 }

 *cs++ = MI_USER_INTERRUPT;

 rq->tail = intel_ring_offset(rq, cs);
 assert_ring_tail_valid(rq->ring, rq->tail);

 return cs;
}
