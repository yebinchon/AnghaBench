#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_sseu {int /*<<< orphan*/  slice_mask; } ;
struct intel_context {int dummy; } ;
struct igt_spinner {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_context*,struct intel_sseu) ; 
 int FUNC1 (char const*,unsigned int,struct intel_context*,struct drm_i915_gem_object*,int /*<<< orphan*/ ,struct igt_spinner*) ; 
 int FUNC2 (char const*,unsigned int,struct intel_context*,struct igt_spinner**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct igt_spinner*) ; 
 int /*<<< orphan*/  FUNC5 (struct igt_spinner*) ; 
 int /*<<< orphan*/  FUNC6 (struct igt_spinner*) ; 

__attribute__((used)) static int
FUNC7(const char *name,
	    unsigned int flags,
	    struct intel_context *ce,
	    struct drm_i915_gem_object *obj,
	    struct intel_sseu sseu)
{
	struct igt_spinner *spin = NULL;
	int ret;

	ret = FUNC2(name, flags, ce, &spin);
	if (ret)
		return ret;

	ret = FUNC0(ce, sseu);
	if (ret)
		goto out_spin;

	ret = FUNC1(name, flags, ce, obj,
			    FUNC3(sseu.slice_mask), spin);

out_spin:
	if (spin) {
		FUNC4(spin);
		FUNC5(spin);
		FUNC6(spin);
	}
	return ret;
}