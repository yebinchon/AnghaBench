
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_request {int dummy; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__** engine; } ;
struct TYPE_3__ {int kernel_context; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETIME ;
 int HZ ;
 size_t RCS0 ;
 int i915_request_add (struct i915_request*) ;
 scalar_t__ i915_request_completed (struct i915_request*) ;
 int i915_request_get (struct i915_request*) ;
 int i915_request_put (struct i915_request*) ;
 int i915_request_wait (struct i915_request*,int ,long const) ;
 int mock_device_flush (struct drm_i915_private*) ;
 struct i915_request* mock_request (int ,long const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int igt_wait_request(void *arg)
{
 const long T = HZ / 4;
 struct drm_i915_private *i915 = arg;
 struct i915_request *request;
 int err = -EINVAL;



 mutex_lock(&i915->drm.struct_mutex);
 request = mock_request(i915->engine[RCS0]->kernel_context, T);
 if (!request) {
  err = -ENOMEM;
  goto out_unlock;
 }
 i915_request_get(request);

 if (i915_request_wait(request, 0, 0) != -ETIME) {
  pr_err("request wait (busy query) succeeded (expected timeout before submit!)\n");
  goto out_request;
 }

 if (i915_request_wait(request, 0, T) != -ETIME) {
  pr_err("request wait succeeded (expected timeout before submit!)\n");
  goto out_request;
 }

 if (i915_request_completed(request)) {
  pr_err("request completed before submit!!\n");
  goto out_request;
 }

 i915_request_add(request);

 if (i915_request_wait(request, 0, 0) != -ETIME) {
  pr_err("request wait (busy query) succeeded (expected timeout after submit!)\n");
  goto out_request;
 }

 if (i915_request_completed(request)) {
  pr_err("request completed immediately!\n");
  goto out_request;
 }

 if (i915_request_wait(request, 0, T / 2) != -ETIME) {
  pr_err("request wait succeeded (expected timeout!)\n");
  goto out_request;
 }

 if (i915_request_wait(request, 0, T) == -ETIME) {
  pr_err("request wait timed out!\n");
  goto out_request;
 }

 if (!i915_request_completed(request)) {
  pr_err("request not complete after waiting!\n");
  goto out_request;
 }

 if (i915_request_wait(request, 0, T) == -ETIME) {
  pr_err("request wait timed out when already complete!\n");
  goto out_request;
 }

 err = 0;
out_request:
 i915_request_put(request);
out_unlock:
 mock_device_flush(i915);
 mutex_unlock(&i915->drm.struct_mutex);
 return err;
}
