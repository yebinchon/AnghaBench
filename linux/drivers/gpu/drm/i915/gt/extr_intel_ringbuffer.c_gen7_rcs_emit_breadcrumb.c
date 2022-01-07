
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int seqno; } ;
struct i915_request {int tail; int ring; TYPE_2__ fence; TYPE_1__* timeline; } ;
struct TYPE_3__ {int hwsp_offset; } ;


 int GFX_OP_PIPE_CONTROL (int) ;
 int MI_NOOP ;
 int MI_USER_INTERRUPT ;
 int PIPE_CONTROL_CS_STALL ;
 int PIPE_CONTROL_DC_FLUSH_ENABLE ;
 int PIPE_CONTROL_DEPTH_CACHE_FLUSH ;
 int PIPE_CONTROL_FLUSH_ENABLE ;
 int PIPE_CONTROL_GLOBAL_GTT_IVB ;
 int PIPE_CONTROL_QW_WRITE ;
 int PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ;
 int assert_ring_tail_valid (int ,int ) ;
 int intel_ring_offset (struct i915_request*,int *) ;

__attribute__((used)) static u32 *gen7_rcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
{
 *cs++ = GFX_OP_PIPE_CONTROL(4);
 *cs++ = (PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
   PIPE_CONTROL_DEPTH_CACHE_FLUSH |
   PIPE_CONTROL_DC_FLUSH_ENABLE |
   PIPE_CONTROL_FLUSH_ENABLE |
   PIPE_CONTROL_QW_WRITE |
   PIPE_CONTROL_GLOBAL_GTT_IVB |
   PIPE_CONTROL_CS_STALL);
 *cs++ = rq->timeline->hwsp_offset;
 *cs++ = rq->fence.seqno;

 *cs++ = MI_USER_INTERRUPT;
 *cs++ = MI_NOOP;

 rq->tail = intel_ring_offset(rq, cs);
 assert_ring_tail_valid(rq->ring, rq->tail);

 return cs;
}
