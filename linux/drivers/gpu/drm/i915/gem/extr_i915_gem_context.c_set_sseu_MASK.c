#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_sseu ;
struct intel_sseu {int dummy; } ;
struct intel_context {TYPE_1__* engine; } ;
struct i915_gem_context {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_context_param_sseu {int flags; int /*<<< orphan*/  engine; scalar_t__ rsvd; } ;
struct drm_i915_gem_context_param {int size; int /*<<< orphan*/  value; } ;
struct TYPE_2__ {scalar_t__ class; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX ; 
 scalar_t__ FUNC0 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int) ; 
 unsigned long LOOKUP_USER_INDEX ; 
 int FUNC2 (struct intel_context*) ; 
 scalar_t__ RENDER_CLASS ; 
 scalar_t__ FUNC3 (struct drm_i915_gem_context_param_sseu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_context*) ; 
 int FUNC5 (struct intel_context*,struct intel_sseu) ; 
 struct intel_context* FUNC6 (struct i915_gem_context*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drm_i915_private*,struct drm_i915_gem_context_param_sseu*,struct intel_sseu*) ; 

__attribute__((used)) static int FUNC9(struct i915_gem_context *ctx,
		    struct drm_i915_gem_context_param *args)
{
	struct drm_i915_private *i915 = ctx->i915;
	struct drm_i915_gem_context_param_sseu user_sseu;
	struct intel_context *ce;
	struct intel_sseu sseu;
	unsigned long lookup;
	int ret;

	if (args->size < sizeof(user_sseu))
		return -EINVAL;

	if (!FUNC1(i915, 11))
		return -ENODEV;

	if (FUNC3(&user_sseu, FUNC7(args->value),
			   sizeof(user_sseu)))
		return -EFAULT;

	if (user_sseu.rsvd)
		return -EINVAL;

	if (user_sseu.flags & ~(I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX))
		return -EINVAL;

	lookup = 0;
	if (user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX)
		lookup |= LOOKUP_USER_INDEX;

	ce = FUNC6(ctx, lookup, &user_sseu.engine);
	if (FUNC0(ce))
		return FUNC2(ce);

	/* Only render engine supports RPCS configuration. */
	if (ce->engine->class != RENDER_CLASS) {
		ret = -ENODEV;
		goto out_ce;
	}

	ret = FUNC8(i915, &user_sseu, &sseu);
	if (ret)
		goto out_ce;

	ret = FUNC5(ce, sseu);
	if (ret)
		goto out_ce;

	args->size = sizeof(user_sseu);

out_ce:
	FUNC4(ce);
	return ret;
}