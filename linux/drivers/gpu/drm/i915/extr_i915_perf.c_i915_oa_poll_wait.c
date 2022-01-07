
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_perf_stream {int poll_wq; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static void i915_oa_poll_wait(struct i915_perf_stream *stream,
         struct file *file,
         poll_table *wait)
{
 poll_wait(file, &stream->poll_wq, wait);
}
