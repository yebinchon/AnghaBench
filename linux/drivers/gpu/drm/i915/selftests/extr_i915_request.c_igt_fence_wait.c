
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_request {int fence; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__** engine; } ;
struct TYPE_3__ {int kernel_context; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETIME ;
 int HZ ;
 size_t RCS0 ;
 scalar_t__ dma_fence_is_signaled (int *) ;
 int dma_fence_wait_timeout (int *,int,long const) ;
 int i915_request_add (struct i915_request*) ;
 int mock_device_flush (struct drm_i915_private*) ;
 struct i915_request* mock_request (int ,long const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int igt_fence_wait(void *arg)
{
 const long T = HZ / 4;
 struct drm_i915_private *i915 = arg;
 struct i915_request *request;
 int err = -EINVAL;



 mutex_lock(&i915->drm.struct_mutex);
 request = mock_request(i915->engine[RCS0]->kernel_context, T);
 if (!request) {
  err = -ENOMEM;
  goto out_locked;
 }

 if (dma_fence_wait_timeout(&request->fence, 0, T) != -ETIME) {
  pr_err("fence wait success before submit (expected timeout)!\n");
  goto out_locked;
 }

 i915_request_add(request);
 mutex_unlock(&i915->drm.struct_mutex);

 if (dma_fence_is_signaled(&request->fence)) {
  pr_err("fence signaled immediately!\n");
  goto out_device;
 }

 if (dma_fence_wait_timeout(&request->fence, 0, T / 2) != -ETIME) {
  pr_err("fence wait success after submit (expected timeout)!\n");
  goto out_device;
 }

 if (dma_fence_wait_timeout(&request->fence, 0, T) <= 0) {
  pr_err("fence wait timed out (expected success)!\n");
  goto out_device;
 }

 if (!dma_fence_is_signaled(&request->fence)) {
  pr_err("fence unsignaled after waiting!\n");
  goto out_device;
 }

 if (dma_fence_wait_timeout(&request->fence, 0, T) <= 0) {
  pr_err("fence wait timed out when complete (expected success)!\n");
  goto out_device;
 }

 err = 0;
out_device:
 mutex_lock(&i915->drm.struct_mutex);
out_locked:
 mock_device_flush(i915);
 mutex_unlock(&i915->drm.struct_mutex);
 return err;
}
