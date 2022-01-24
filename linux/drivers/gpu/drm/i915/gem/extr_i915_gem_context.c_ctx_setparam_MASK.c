#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  priority; } ;
struct i915_gem_context {TYPE_3__ sched; TYPE_2__* i915; int /*<<< orphan*/  user_flags; } ;
struct drm_i915_gem_context_param {int param; int /*<<< orphan*/  size; int /*<<< orphan*/  value; } ;
struct drm_i915_file_private {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_4__ {int scheduler; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  I915_CONTEXT_DEFAULT_PRIORITY ; 
 int /*<<< orphan*/  I915_CONTEXT_MAX_USER_PRIORITY ; 
 int /*<<< orphan*/  I915_CONTEXT_MIN_USER_PRIORITY ; 
#define  I915_CONTEXT_PARAM_BANNABLE 136 
#define  I915_CONTEXT_PARAM_BAN_PERIOD 135 
#define  I915_CONTEXT_PARAM_ENGINES 134 
#define  I915_CONTEXT_PARAM_NO_ERROR_CAPTURE 133 
#define  I915_CONTEXT_PARAM_NO_ZEROMAP 132 
#define  I915_CONTEXT_PARAM_PRIORITY 131 
#define  I915_CONTEXT_PARAM_RECOVERABLE 130 
#define  I915_CONTEXT_PARAM_SSEU 129 
#define  I915_CONTEXT_PARAM_VM 128 
 int I915_SCHEDULER_CAP_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCONTEXT_NO_ZEROMAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct i915_gem_context*,struct drm_i915_gem_context_param*) ; 
 int FUNC11 (struct drm_i915_file_private*,struct i915_gem_context*,struct drm_i915_gem_context_param*) ; 
 int FUNC12 (struct i915_gem_context*,struct drm_i915_gem_context_param*) ; 

__attribute__((used)) static int FUNC13(struct drm_i915_file_private *fpriv,
			struct i915_gem_context *ctx,
			struct drm_i915_gem_context_param *args)
{
	int ret = 0;

	switch (args->param) {
	case I915_CONTEXT_PARAM_NO_ZEROMAP:
		if (args->size)
			ret = -EINVAL;
		else if (args->value)
			FUNC9(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
		else
			FUNC2(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
		break;

	case I915_CONTEXT_PARAM_NO_ERROR_CAPTURE:
		if (args->size)
			ret = -EINVAL;
		else if (args->value)
			FUNC7(ctx);
		else
			FUNC4(ctx);
		break;

	case I915_CONTEXT_PARAM_BANNABLE:
		if (args->size)
			ret = -EINVAL;
		else if (!FUNC1(CAP_SYS_ADMIN) && !args->value)
			ret = -EPERM;
		else if (args->value)
			FUNC6(ctx);
		else
			FUNC3(ctx);
		break;

	case I915_CONTEXT_PARAM_RECOVERABLE:
		if (args->size)
			ret = -EINVAL;
		else if (args->value)
			FUNC8(ctx);
		else
			FUNC5(ctx);
		break;

	case I915_CONTEXT_PARAM_PRIORITY:
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
				 !FUNC1(CAP_SYS_NICE))
				ret = -EPERM;
			else
				ctx->sched.priority =
					FUNC0(priority);
		}
		break;

	case I915_CONTEXT_PARAM_SSEU:
		ret = FUNC12(ctx, args);
		break;

	case I915_CONTEXT_PARAM_VM:
		ret = FUNC11(fpriv, ctx, args);
		break;

	case I915_CONTEXT_PARAM_ENGINES:
		ret = FUNC10(ctx, args);
		break;

	case I915_CONTEXT_PARAM_BAN_PERIOD:
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}