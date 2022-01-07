
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_perf_stream {scalar_t__ ctx; int link; TYPE_1__* ops; scalar_t__ enabled; } ;
struct TYPE_2__ {int (* destroy ) (struct i915_perf_stream*) ;} ;


 int i915_gem_context_put (scalar_t__) ;
 int i915_perf_disable_locked (struct i915_perf_stream*) ;
 int kfree (struct i915_perf_stream*) ;
 int list_del (int *) ;
 int stub1 (struct i915_perf_stream*) ;

__attribute__((used)) static void i915_perf_destroy_locked(struct i915_perf_stream *stream)
{
 if (stream->enabled)
  i915_perf_disable_locked(stream);

 if (stream->ops->destroy)
  stream->ops->destroy(stream);

 list_del(&stream->link);

 if (stream->ctx)
  i915_gem_context_put(stream->ctx);

 kfree(stream);
}
