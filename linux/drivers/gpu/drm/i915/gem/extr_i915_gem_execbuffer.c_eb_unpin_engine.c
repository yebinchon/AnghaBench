
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int mutex; } ;
struct intel_context {struct intel_timeline* timeline; } ;
struct i915_execbuffer {struct intel_context* context; } ;


 int __eb_unpin_context (struct i915_execbuffer*,struct intel_context*) ;
 int intel_context_exit (struct intel_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void eb_unpin_engine(struct i915_execbuffer *eb)
{
 struct intel_context *ce = eb->context;
 struct intel_timeline *tl = ce->timeline;

 mutex_lock(&tl->mutex);
 intel_context_exit(ce);
 mutex_unlock(&tl->mutex);

 __eb_unpin_context(eb, ce);
}
