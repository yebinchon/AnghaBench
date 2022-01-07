
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


 int ENOMEM ;
 int HZ ;
 size_t RCS0 ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* mock_request (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int igt_add_request(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct i915_request *request;
 int err = -ENOMEM;



 mutex_lock(&i915->drm.struct_mutex);
 request = mock_request(i915->engine[RCS0]->kernel_context, HZ / 10);
 if (!request)
  goto out_unlock;

 i915_request_add(request);

 err = 0;
out_unlock:
 mutex_unlock(&i915->drm.struct_mutex);
 return err;
}
