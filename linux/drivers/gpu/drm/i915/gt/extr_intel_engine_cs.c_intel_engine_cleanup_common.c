
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int requests; } ;
struct intel_engine_cs {int whitelist; int wa_list; int ctx_wa_list; int barrier_tasks; int kernel_context; scalar_t__ default_state; int pool; TYPE_1__ active; } ;


 int GEM_BUG_ON (int) ;
 int cleanup_status_page (struct intel_engine_cs*) ;
 int i915_gem_object_put (scalar_t__) ;
 int intel_context_put (int ) ;
 int intel_context_unpin (int ) ;
 int intel_engine_cleanup_cmd_parser (struct intel_engine_cs*) ;
 int intel_engine_fini_breadcrumbs (struct intel_engine_cs*) ;
 int intel_engine_pool_fini (int *) ;
 int intel_wa_list_free (int *) ;
 int list_empty (int *) ;
 int llist_empty (int *) ;

void intel_engine_cleanup_common(struct intel_engine_cs *engine)
{
 GEM_BUG_ON(!list_empty(&engine->active.requests));

 cleanup_status_page(engine);

 intel_engine_pool_fini(&engine->pool);
 intel_engine_fini_breadcrumbs(engine);
 intel_engine_cleanup_cmd_parser(engine);

 if (engine->default_state)
  i915_gem_object_put(engine->default_state);

 intel_context_unpin(engine->kernel_context);
 intel_context_put(engine->kernel_context);
 GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));

 intel_wa_list_free(&engine->ctx_wa_list);
 intel_wa_list_free(&engine->wa_list);
 intel_wa_list_free(&engine->whitelist);
}
