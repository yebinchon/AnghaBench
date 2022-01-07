
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct intel_guc_client {int dummy; } ;
struct intel_guc {struct intel_guc_client* execbuf_client; } ;
struct intel_engine_cs {int guc_id; } ;
struct TYPE_3__ {int seqno; } ;
struct i915_request {TYPE_1__ fence; int tail; int ring; TYPE_2__* hw_context; struct intel_engine_cs* engine; } ;
struct TYPE_4__ {int lrc_desc; } ;


 int guc_ring_doorbell (struct intel_guc_client*) ;
 int guc_wq_item_append (struct intel_guc_client*,int ,int,int,int ) ;
 int intel_ring_set_tail (int ,int ) ;
 int lower_32_bits (int ) ;

__attribute__((used)) static void guc_add_request(struct intel_guc *guc, struct i915_request *rq)
{
 struct intel_guc_client *client = guc->execbuf_client;
 struct intel_engine_cs *engine = rq->engine;
 u32 ctx_desc = lower_32_bits(rq->hw_context->lrc_desc);
 u32 ring_tail = intel_ring_set_tail(rq->ring, rq->tail) / sizeof(u64);

 guc_wq_item_append(client, engine->guc_id, ctx_desc,
      ring_tail, rq->fence.seqno);
 guc_ring_doorbell(client);
}
