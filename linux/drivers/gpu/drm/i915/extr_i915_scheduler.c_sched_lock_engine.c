
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_cache {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; } ;
struct i915_sched_node {int dummy; } ;
struct i915_request {int engine; } ;


 int GEM_BUG_ON (int) ;
 struct intel_engine_cs* READ_ONCE (int ) ;
 int memset (struct sched_cache*,int ,int) ;
 struct i915_request* node_to_request (struct i915_sched_node const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct intel_engine_cs *
sched_lock_engine(const struct i915_sched_node *node,
    struct intel_engine_cs *locked,
    struct sched_cache *cache)
{
 const struct i915_request *rq = node_to_request(node);
 struct intel_engine_cs *engine;

 GEM_BUG_ON(!locked);







 while (locked != (engine = READ_ONCE(rq->engine))) {
  spin_unlock(&locked->active.lock);
  memset(cache, 0, sizeof(*cache));
  spin_lock(&engine->active.lock);
  locked = engine;
 }

 GEM_BUG_ON(locked != engine);
 return locked;
}
