
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int emit_fini_breadcrumb_dw; struct intel_context* kernel_context; int (* set_default_submission ) (struct intel_engine_cs*) ;} ;
struct intel_context {int dummy; } ;


 scalar_t__ IS_ERR (struct intel_context*) ;
 int PTR_ERR (struct intel_context*) ;
 struct intel_context* create_kernel_context (struct intel_engine_cs*) ;
 int intel_context_put (struct intel_context*) ;
 int intel_context_unpin (struct intel_context*) ;
 int measure_breadcrumb_dw (struct intel_engine_cs*) ;
 int stub1 (struct intel_engine_cs*) ;

int intel_engine_init_common(struct intel_engine_cs *engine)
{
 struct intel_context *ce;
 int ret;

 engine->set_default_submission(engine);
 ce = create_kernel_context(engine);
 if (IS_ERR(ce))
  return PTR_ERR(ce);

 engine->kernel_context = ce;

 ret = measure_breadcrumb_dw(engine);
 if (ret < 0)
  goto err_unpin;

 engine->emit_fini_breadcrumb_dw = ret;

 return 0;

err_unpin:
 intel_context_unpin(ce);
 intel_context_put(ce);
 return ret;
}
