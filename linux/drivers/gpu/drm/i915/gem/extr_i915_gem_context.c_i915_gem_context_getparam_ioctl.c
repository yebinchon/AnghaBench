
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int priority; } ;
struct i915_gem_context {TYPE_6__ sched; TYPE_1__* vm; int user_flags; } ;
struct drm_i915_gem_context_param {int param; int value; int size; int ctx_id; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;
struct TYPE_11__ {int total; } ;
struct TYPE_12__ {TYPE_4__ vm; TYPE_3__* alias; } ;
struct TYPE_14__ {TYPE_5__ ggtt; } ;
struct TYPE_9__ {int total; } ;
struct TYPE_10__ {TYPE_2__ vm; } ;
struct TYPE_8__ {int total; } ;


 int EINVAL ;
 int ENOENT ;
 int I915_USER_PRIORITY_SHIFT ;
 int UCONTEXT_NO_ZEROMAP ;
 int get_engines (struct i915_gem_context*,struct drm_i915_gem_context_param*) ;
 int get_ppgtt (struct drm_i915_file_private*,struct i915_gem_context*,struct drm_i915_gem_context_param*) ;
 int get_sseu (struct i915_gem_context*,struct drm_i915_gem_context_param*) ;
 int i915_gem_context_is_bannable (struct i915_gem_context*) ;
 int i915_gem_context_is_recoverable (struct i915_gem_context*) ;
 struct i915_gem_context* i915_gem_context_lookup (struct drm_i915_file_private*,int ) ;
 int i915_gem_context_no_error_capture (struct i915_gem_context*) ;
 int i915_gem_context_put (struct i915_gem_context*) ;
 int test_bit (int ,int *) ;
 TYPE_7__* to_i915 (struct drm_device*) ;

int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct drm_i915_gem_context_param *args = data;
 struct i915_gem_context *ctx;
 int ret = 0;

 ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
 if (!ctx)
  return -ENOENT;

 switch (args->param) {
 case 132:
  args->size = 0;
  args->value = test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
  break;

 case 134:
  args->size = 0;
  if (ctx->vm)
   args->value = ctx->vm->total;
  else if (to_i915(dev)->ggtt.alias)
   args->value = to_i915(dev)->ggtt.alias->vm.total;
  else
   args->value = to_i915(dev)->ggtt.vm.total;
  break;

 case 133:
  args->size = 0;
  args->value = i915_gem_context_no_error_capture(ctx);
  break;

 case 137:
  args->size = 0;
  args->value = i915_gem_context_is_bannable(ctx);
  break;

 case 130:
  args->size = 0;
  args->value = i915_gem_context_is_recoverable(ctx);
  break;

 case 131:
  args->size = 0;
  args->value = ctx->sched.priority >> I915_USER_PRIORITY_SHIFT;
  break;

 case 129:
  ret = get_sseu(ctx, args);
  break;

 case 128:
  ret = get_ppgtt(file_priv, ctx, args);
  break;

 case 135:
  ret = get_engines(ctx, args);
  break;

 case 136:
 default:
  ret = -EINVAL;
  break;
 }

 i915_gem_context_put(ctx);
 return ret;
}
