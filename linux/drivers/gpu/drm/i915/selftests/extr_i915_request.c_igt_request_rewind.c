
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_context {int dummy; } ;
struct i915_request {TYPE_1__* engine; } ;
struct i915_gem_context {int dummy; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_3__ {int (* submit_request ) (struct i915_request*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int ETIME ;
 int GEM_BUG_ON (int ) ;
 int HZ ;
 int IS_ERR (struct intel_context*) ;
 int RCS0 ;
 struct intel_context* i915_gem_context_get_engine (struct i915_gem_context*,int ) ;
 int i915_request_add (struct i915_request*) ;
 scalar_t__ i915_request_completed (struct i915_request*) ;
 int i915_request_get (struct i915_request*) ;
 int i915_request_put (struct i915_request*) ;
 int i915_request_wait (struct i915_request*,int ,int) ;
 int intel_context_put (struct intel_context*) ;
 int mock_cancel_request (struct i915_request*) ;
 struct i915_gem_context* mock_context (struct drm_i915_private*,char*) ;
 int mock_context_close (struct i915_gem_context*) ;
 int mock_device_flush (struct drm_i915_private*) ;
 struct i915_request* mock_request (struct intel_context*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct i915_request*) ;

__attribute__((used)) static int igt_request_rewind(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct i915_request *request, *vip;
 struct i915_gem_context *ctx[2];
 struct intel_context *ce;
 int err = -EINVAL;

 mutex_lock(&i915->drm.struct_mutex);
 ctx[0] = mock_context(i915, "A");
 ce = i915_gem_context_get_engine(ctx[0], RCS0);
 GEM_BUG_ON(IS_ERR(ce));
 request = mock_request(ce, 2 * HZ);
 intel_context_put(ce);
 if (!request) {
  err = -ENOMEM;
  goto err_context_0;
 }

 i915_request_get(request);
 i915_request_add(request);

 ctx[1] = mock_context(i915, "B");
 ce = i915_gem_context_get_engine(ctx[1], RCS0);
 GEM_BUG_ON(IS_ERR(ce));
 vip = mock_request(ce, 0);
 intel_context_put(ce);
 if (!vip) {
  err = -ENOMEM;
  goto err_context_1;
 }


 if (!mock_cancel_request(request)) {
  pr_err("failed to cancel request (already executed)!\n");
  i915_request_add(vip);
  goto err_context_1;
 }
 i915_request_get(vip);
 i915_request_add(vip);
 rcu_read_lock();
 request->engine->submit_request(request);
 rcu_read_unlock();

 mutex_unlock(&i915->drm.struct_mutex);

 if (i915_request_wait(vip, 0, HZ) == -ETIME) {
  pr_err("timed out waiting for high priority request\n");
  goto err;
 }

 if (i915_request_completed(request)) {
  pr_err("low priority request already completed\n");
  goto err;
 }

 err = 0;
err:
 i915_request_put(vip);
 mutex_lock(&i915->drm.struct_mutex);
err_context_1:
 mock_context_close(ctx[1]);
 i915_request_put(request);
err_context_0:
 mock_context_close(ctx[0]);
 mock_device_flush(i915);
 mutex_unlock(&i915->drm.struct_mutex);
 return err;
}
