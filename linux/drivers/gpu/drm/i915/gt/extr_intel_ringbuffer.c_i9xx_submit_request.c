
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int tail; int ring; int engine; } ;


 int ENGINE_WRITE (int ,int ,int ) ;
 int RING_TAIL ;
 int i915_request_submit (struct i915_request*) ;
 int intel_ring_set_tail (int ,int ) ;

__attribute__((used)) static void i9xx_submit_request(struct i915_request *request)
{
 i915_request_submit(request);

 ENGINE_WRITE(request->engine, RING_TAIL,
       intel_ring_set_tail(request->ring, request->tail));
}
