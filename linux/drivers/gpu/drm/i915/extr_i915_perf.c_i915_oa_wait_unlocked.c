
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_perf_stream {int poll_wq; int periodic; } ;


 int EIO ;
 int oa_buffer_check_unlocked (struct i915_perf_stream*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int i915_oa_wait_unlocked(struct i915_perf_stream *stream)
{

 if (!stream->periodic)
  return -EIO;

 return wait_event_interruptible(stream->poll_wq,
     oa_buffer_check_unlocked(stream));
}
