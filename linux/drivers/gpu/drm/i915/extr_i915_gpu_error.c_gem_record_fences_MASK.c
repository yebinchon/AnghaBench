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
struct intel_uncore {int dummy; } ;
struct i915_gpu_state {int nfence; void** fence; struct drm_i915_private* i915; } ;
struct TYPE_2__ {int num_fences; } ;
struct drm_i915_private {TYPE_1__ ggtt; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 void* FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct i915_gpu_state *error)
{
	struct drm_i915_private *dev_priv = error->i915;
	struct intel_uncore *uncore = &dev_priv->uncore;
	int i;

	if (FUNC3(dev_priv) >= 6) {
		for (i = 0; i < dev_priv->ggtt.num_fences; i++)
			error->fence[i] =
				FUNC5(uncore,
						    FUNC2(i));
	} else if (FUNC3(dev_priv) >= 4) {
		for (i = 0; i < dev_priv->ggtt.num_fences; i++)
			error->fence[i] =
				FUNC5(uncore,
						    FUNC1(i));
	} else {
		for (i = 0; i < dev_priv->ggtt.num_fences; i++)
			error->fence[i] =
				FUNC4(uncore, FUNC0(i));
	}
	error->nfence = i;
}