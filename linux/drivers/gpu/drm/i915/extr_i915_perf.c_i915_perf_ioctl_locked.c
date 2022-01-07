
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_perf_stream {int dummy; } ;


 long EINVAL ;


 int i915_perf_disable_locked (struct i915_perf_stream*) ;
 int i915_perf_enable_locked (struct i915_perf_stream*) ;

__attribute__((used)) static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
       unsigned int cmd,
       unsigned long arg)
{
 switch (cmd) {
 case 128:
  i915_perf_enable_locked(stream);
  return 0;
 case 129:
  i915_perf_disable_locked(stream);
  return 0;
 }

 return -EINVAL;
}
