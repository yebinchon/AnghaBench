
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_guc_client {int wq_lock; } ;
struct intel_guc {struct intel_guc_client* execbuf_client; } ;
struct intel_engine_cs {TYPE_3__* gt; } ;
struct i915_request {TYPE_1__* ring; } ;
struct TYPE_5__ {struct intel_guc guc; } ;
struct TYPE_6__ {TYPE_2__ uc; } ;
struct TYPE_4__ {int vma; } ;


 int flush_ggtt_writes (int ) ;
 int guc_add_request (struct intel_guc*,struct i915_request*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void guc_submit(struct intel_engine_cs *engine,
         struct i915_request **out,
         struct i915_request **end)
{
 struct intel_guc *guc = &engine->gt->uc.guc;
 struct intel_guc_client *client = guc->execbuf_client;

 spin_lock(&client->wq_lock);

 do {
  struct i915_request *rq = *out++;

  flush_ggtt_writes(rq->ring->vma);
  guc_add_request(guc, rq);
 } while (out != end);

 spin_unlock(&client->wq_lock);
}
