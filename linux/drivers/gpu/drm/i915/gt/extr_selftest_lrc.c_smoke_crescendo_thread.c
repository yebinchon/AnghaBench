
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct preempt_smoke {unsigned long count; TYPE_1__* i915; int batch; } ;
struct i915_gem_context {int dummy; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct TYPE_3__ {TYPE_2__ drm; } ;


 unsigned long I915_PRIORITY_MAX ;
 int IGT_TIMEOUT (int ) ;
 int __igt_timeout (int ,int *) ;
 int end_time ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i915_gem_context* smoke_context (struct preempt_smoke*) ;
 int smoke_submit (struct preempt_smoke*,struct i915_gem_context*,unsigned long,int ) ;

__attribute__((used)) static int smoke_crescendo_thread(void *arg)
{
 struct preempt_smoke *smoke = arg;
 IGT_TIMEOUT(end_time);
 unsigned long count;

 count = 0;
 do {
  struct i915_gem_context *ctx = smoke_context(smoke);
  int err;

  mutex_lock(&smoke->i915->drm.struct_mutex);
  err = smoke_submit(smoke,
       ctx, count % I915_PRIORITY_MAX,
       smoke->batch);
  mutex_unlock(&smoke->i915->drm.struct_mutex);
  if (err)
   return err;

  count++;
 } while (!__igt_timeout(end_time, ((void*)0)));

 smoke->count = count;
 return 0;
}
