
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int priority; } ;
struct i915_gem_context {TYPE_3__ sched; TYPE_2__* i915; int user_flags; } ;
struct drm_i915_gem_context_param {int param; int size; int value; } ;
struct drm_i915_file_private {int dummy; } ;
typedef int s64 ;
struct TYPE_4__ {int scheduler; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_NICE ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int I915_CONTEXT_DEFAULT_PRIORITY ;
 int I915_CONTEXT_MAX_USER_PRIORITY ;
 int I915_CONTEXT_MIN_USER_PRIORITY ;
 int I915_SCHEDULER_CAP_PRIORITY ;
 int I915_USER_PRIORITY (int ) ;
 int UCONTEXT_NO_ZEROMAP ;
 int capable (int ) ;
 int clear_bit (int ,int *) ;
 int i915_gem_context_clear_bannable (struct i915_gem_context*) ;
 int i915_gem_context_clear_no_error_capture (struct i915_gem_context*) ;
 int i915_gem_context_clear_recoverable (struct i915_gem_context*) ;
 int i915_gem_context_set_bannable (struct i915_gem_context*) ;
 int i915_gem_context_set_no_error_capture (struct i915_gem_context*) ;
 int i915_gem_context_set_recoverable (struct i915_gem_context*) ;
 int set_bit (int ,int *) ;
 int set_engines (struct i915_gem_context*,struct drm_i915_gem_context_param*) ;
 int set_ppgtt (struct drm_i915_file_private*,struct i915_gem_context*,struct drm_i915_gem_context_param*) ;
 int set_sseu (struct i915_gem_context*,struct drm_i915_gem_context_param*) ;

__attribute__((used)) static int ctx_setparam(struct drm_i915_file_private *fpriv,
   struct i915_gem_context *ctx,
   struct drm_i915_gem_context_param *args)
{
 int ret = 0;

 switch (args->param) {
 case 132:
  if (args->size)
   ret = -EINVAL;
  else if (args->value)
   set_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
  else
   clear_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
  break;

 case 133:
  if (args->size)
   ret = -EINVAL;
  else if (args->value)
   i915_gem_context_set_no_error_capture(ctx);
  else
   i915_gem_context_clear_no_error_capture(ctx);
  break;

 case 136:
  if (args->size)
   ret = -EINVAL;
  else if (!capable(CAP_SYS_ADMIN) && !args->value)
   ret = -EPERM;
  else if (args->value)
   i915_gem_context_set_bannable(ctx);
  else
   i915_gem_context_clear_bannable(ctx);
  break;

 case 130:
  if (args->size)
   ret = -EINVAL;
  else if (args->value)
   i915_gem_context_set_recoverable(ctx);
  else
   i915_gem_context_clear_recoverable(ctx);
  break;

 case 131:
  {
   s64 priority = args->value;

   if (args->size)
    ret = -EINVAL;
   else if (!(ctx->i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
    ret = -ENODEV;
   else if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
     priority < I915_CONTEXT_MIN_USER_PRIORITY)
    ret = -EINVAL;
   else if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
     !capable(CAP_SYS_NICE))
    ret = -EPERM;
   else
    ctx->sched.priority =
     I915_USER_PRIORITY(priority);
  }
  break;

 case 129:
  ret = set_sseu(ctx, args);
  break;

 case 128:
  ret = set_ppgtt(fpriv, ctx, args);
  break;

 case 134:
  ret = set_engines(ctx, args);
  break;

 case 135:
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
