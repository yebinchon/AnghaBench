
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct i915_request {int engine; TYPE_1__ mock; } ;


 int GEM_BUG_ON (int) ;
 int i915_request_completed (struct i915_request*) ;
 int i915_request_mark_complete (struct i915_request*) ;
 int intel_engine_queue_breadcrumbs (int ) ;
 int list_del_init (int *) ;

__attribute__((used)) static void advance(struct i915_request *request)
{
 list_del_init(&request->mock.link);
 i915_request_mark_complete(request);
 GEM_BUG_ON(!i915_request_completed(request));

 intel_engine_queue_breadcrumbs(request->engine);
}
