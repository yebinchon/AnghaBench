
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {int dummy; } ;
struct i915_active_request {int dummy; } ;
struct TYPE_2__ {int ref; } ;


 int active_retire (int ) ;
 TYPE_1__* node_from_active (struct i915_active_request*) ;

__attribute__((used)) static void
node_retire(struct i915_active_request *base, struct i915_request *rq)
{
 active_retire(node_from_active(base)->ref);
}
