
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {struct intel_context* kernel_context; int pool; } ;
struct intel_context {int dummy; } ;


 int ENGINE_MOCK ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct intel_context*) ;
 struct intel_context* create_kernel_context (struct intel_engine_cs*) ;
 int intel_engine_fini_breadcrumbs (struct intel_engine_cs*) ;
 int intel_engine_init__pm (struct intel_engine_cs*) ;
 int intel_engine_init_active (struct intel_engine_cs*,int ) ;
 int intel_engine_init_breadcrumbs (struct intel_engine_cs*) ;
 int intel_engine_init_execlists (struct intel_engine_cs*) ;
 int intel_engine_pool_init (int *) ;

int mock_engine_init(struct intel_engine_cs *engine)
{
 struct intel_context *ce;

 intel_engine_init_active(engine, ENGINE_MOCK);
 intel_engine_init_breadcrumbs(engine);
 intel_engine_init_execlists(engine);
 intel_engine_init__pm(engine);
 intel_engine_pool_init(&engine->pool);

 ce = create_kernel_context(engine);
 if (IS_ERR(ce))
  goto err_breadcrumbs;

 engine->kernel_context = ce;
 return 0;

err_breadcrumbs:
 intel_engine_fini_breadcrumbs(engine);
 return -ENOMEM;
}
