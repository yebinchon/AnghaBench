
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preempt_client {int ctx; int spin; } ;
struct drm_i915_private {int gt; } ;


 int ENOMEM ;
 scalar_t__ igt_spinner_init (int *,int *) ;
 int kernel_context (struct drm_i915_private*) ;
 int kernel_context_close (int ) ;

__attribute__((used)) static int preempt_client_init(struct drm_i915_private *i915,
          struct preempt_client *c)
{
 c->ctx = kernel_context(i915);
 if (!c->ctx)
  return -ENOMEM;

 if (igt_spinner_init(&c->spin, &i915->gt))
  goto err_ctx;

 return 0;

err_ctx:
 kernel_context_close(c->ctx);
 return -ENOMEM;
}
