
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_perf_stream {int enabled; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct i915_perf_stream*) ;} ;


 int stub1 (struct i915_perf_stream*) ;

__attribute__((used)) static void i915_perf_disable_locked(struct i915_perf_stream *stream)
{
 if (!stream->enabled)
  return;


 stream->enabled = 0;

 if (stream->ops->disable)
  stream->ops->disable(stream);
}
