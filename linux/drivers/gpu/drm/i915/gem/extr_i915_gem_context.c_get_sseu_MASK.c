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
struct TYPE_2__ {int /*<<< orphan*/  max_eus_per_subslice; int /*<<< orphan*/  min_eus_per_subslice; int /*<<< orphan*/  subslice_mask; int /*<<< orphan*/  slice_mask; } ;
struct intel_context {TYPE_1__ sseu; } ;
struct i915_gem_context {int dummy; } ;
struct drm_i915_gem_context_param_sseu {int flags; int /*<<< orphan*/  max_eus_per_subslice; int /*<<< orphan*/  min_eus_per_subslice; int /*<<< orphan*/  subslice_mask; int /*<<< orphan*/  slice_mask; int /*<<< orphan*/  engine; scalar_t__ rsvd; } ;
struct drm_i915_gem_context_param {int size; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX ; 
 scalar_t__ FUNC0 (struct intel_context*) ; 
 unsigned long LOOKUP_USER_INDEX ; 
 int FUNC1 (struct intel_context*) ; 
 scalar_t__ FUNC2 (struct drm_i915_gem_context_param_sseu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct drm_i915_gem_context_param_sseu*,int) ; 
 int FUNC4 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_context*) ; 
 struct intel_context* FUNC7 (struct i915_gem_context*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i915_gem_context *ctx,
		    struct drm_i915_gem_context_param *args)
{
	struct drm_i915_gem_context_param_sseu user_sseu;
	struct intel_context *ce;
	unsigned long lookup;
	int err;

	if (args->size == 0)
		goto out;
	else if (args->size < sizeof(user_sseu))
		return -EINVAL;

	if (FUNC2(&user_sseu, FUNC8(args->value),
			   sizeof(user_sseu)))
		return -EFAULT;

	if (user_sseu.rsvd)
		return -EINVAL;

	if (user_sseu.flags & ~(I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX))
		return -EINVAL;

	lookup = 0;
	if (user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX)
		lookup |= LOOKUP_USER_INDEX;

	ce = FUNC7(ctx, lookup, &user_sseu.engine);
	if (FUNC0(ce))
		return FUNC1(ce);

	err = FUNC4(ce); /* serialises with set_sseu */
	if (err) {
		FUNC5(ce);
		return err;
	}

	user_sseu.slice_mask = ce->sseu.slice_mask;
	user_sseu.subslice_mask = ce->sseu.subslice_mask;
	user_sseu.min_eus_per_subslice = ce->sseu.min_eus_per_subslice;
	user_sseu.max_eus_per_subslice = ce->sseu.max_eus_per_subslice;

	FUNC6(ce);
	FUNC5(ce);

	if (FUNC3(FUNC8(args->value), &user_sseu,
			 sizeof(user_sseu)))
		return -EFAULT;

out:
	args->size = sizeof(user_sseu);

	return 0;
}