
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_cs {TYPE_1__* i915; } ;
struct intel_context {int ring; } ;
struct TYPE_2__ {int kernel_context; } ;


 struct intel_context* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct intel_context*) ;
 int SZ_4K ;
 int __intel_context_ring_size (int ) ;
 struct intel_context* intel_context_create (int ,struct intel_engine_cs*) ;
 int intel_context_pin (struct intel_context*) ;
 int intel_context_put (struct intel_context*) ;

__attribute__((used)) static struct intel_context *
create_kernel_context(struct intel_engine_cs *engine)
{
 struct intel_context *ce;
 int err;

 ce = intel_context_create(engine->i915->kernel_context, engine);
 if (IS_ERR(ce))
  return ce;

 ce->ring = __intel_context_ring_size(SZ_4K);

 err = intel_context_pin(ce);
 if (err) {
  intel_context_put(ce);
  return ERR_PTR(err);
 }

 return ce;
}
