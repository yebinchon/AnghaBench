
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_perf_stream {scalar_t__ pollin; TYPE_1__* ops; } ;
struct file {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int (* poll_wait ) (struct i915_perf_stream*,struct file*,int *) ;} ;


 int EPOLLIN ;
 int stub1 (struct i915_perf_stream*,struct file*,int *) ;

__attribute__((used)) static __poll_t i915_perf_poll_locked(struct drm_i915_private *dev_priv,
       struct i915_perf_stream *stream,
       struct file *file,
       poll_table *wait)
{
 __poll_t events = 0;

 stream->ops->poll_wait(stream, file, wait);







 if (stream->pollin)
  events |= EPOLLIN;

 return events;
}
