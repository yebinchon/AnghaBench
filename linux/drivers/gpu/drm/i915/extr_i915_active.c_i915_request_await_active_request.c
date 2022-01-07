
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_request {int fence; TYPE_2__* i915; } ;
struct i915_active_request {int dummy; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 struct i915_request* i915_active_request_raw (struct i915_active_request*,int *) ;
 int i915_request_await_dma_fence (struct i915_request*,int *) ;

int i915_request_await_active_request(struct i915_request *rq,
          struct i915_active_request *active)
{
 struct i915_request *barrier =
  i915_active_request_raw(active, &rq->i915->drm.struct_mutex);

 return barrier ? i915_request_await_dma_fence(rq, &barrier->fence) : 0;
}
