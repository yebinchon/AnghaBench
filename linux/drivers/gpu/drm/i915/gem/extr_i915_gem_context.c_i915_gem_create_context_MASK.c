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
struct intel_timeline {int /*<<< orphan*/  vm; } ;
struct i915_ppgtt {int /*<<< orphan*/  vm; } ;
struct i915_gem_context {int /*<<< orphan*/  vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 struct intel_timeline* FUNC1 (struct intel_timeline*) ; 
 struct intel_timeline* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 unsigned int I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE ; 
 scalar_t__ FUNC5 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_timeline*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_timeline*,struct intel_timeline*) ; 
 struct intel_timeline* FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 struct intel_timeline* FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct intel_timeline* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_timeline*) ; 

__attribute__((used)) static struct i915_gem_context *
FUNC18(struct drm_i915_private *dev_priv, unsigned int flags)
{
	struct i915_gem_context *ctx;

	FUNC16(&dev_priv->drm.struct_mutex);

	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE &&
	    !FUNC3(dev_priv))
		return FUNC2(-EINVAL);

	/* Reap the most stale context */
	FUNC11(dev_priv);

	ctx = FUNC9(dev_priv);
	if (FUNC5(ctx))
		return ctx;

	if (FUNC4(dev_priv)) {
		struct i915_ppgtt *ppgtt;

		ppgtt = FUNC12(dev_priv);
		if (FUNC5(ppgtt)) {
			FUNC0("PPGTT setup failed (%ld)\n",
					 FUNC6(ppgtt));
			FUNC10(ctx);
			return FUNC1(ppgtt);
		}

		FUNC7(ctx, &ppgtt->vm);
		FUNC13(&ppgtt->vm);
	}

	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
		struct intel_timeline *timeline;

		timeline = FUNC14(&dev_priv->gt, NULL);
		if (FUNC5(timeline)) {
			FUNC10(ctx);
			return FUNC1(timeline);
		}

		FUNC8(ctx, timeline);
		FUNC15(timeline);
	}

	FUNC17(ctx);

	return ctx;
}