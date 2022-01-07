
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct reloc_cache {int rq_size; TYPE_4__* rq; int * rq_cmd; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct TYPE_10__ {TYPE_3__* engine; TYPE_2__* batch; } ;
struct TYPE_9__ {int gt; } ;
struct TYPE_8__ {TYPE_5__* obj; } ;


 int GEM_BUG_ON (int) ;
 int MI_BATCH_BUFFER_END ;
 int __i915_gem_object_flush_map (TYPE_5__*,int ,size_t) ;
 int i915_gem_object_unpin_map (TYPE_5__*) ;
 int i915_request_add (TYPE_4__*) ;
 int intel_gt_chipset_flush (int ) ;

__attribute__((used)) static void reloc_gpu_flush(struct reloc_cache *cache)
{
 GEM_BUG_ON(cache->rq_size >= cache->rq->batch->obj->base.size / sizeof(u32));
 cache->rq_cmd[cache->rq_size] = MI_BATCH_BUFFER_END;

 __i915_gem_object_flush_map(cache->rq->batch->obj, 0, cache->rq_size);
 i915_gem_object_unpin_map(cache->rq->batch->obj);

 intel_gt_chipset_flush(cache->rq->engine->gt);

 i915_request_add(cache->rq);
 cache->rq = ((void*)0);
}
