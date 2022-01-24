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
struct intel_gt {struct intel_engine_cs*** engine_class; } ;
struct intel_engine_cs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; struct intel_gt gt; } ;

/* Variables and functions */
 unsigned int MAX_ENGINE_CLASS ; 
 int MAX_ENGINE_INSTANCE ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*,struct intel_engine_cs**,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
	struct intel_gt *gt = &i915->gt;
	unsigned int class, inst;
	int err = 0;

	if (FUNC0(i915))
		return 0;

	FUNC2(&i915->drm.struct_mutex);

	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
		unsigned int nsibling;

		nsibling = 0;
		for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
			if (!gt->engine_class[class][inst])
				break;

			siblings[nsibling++] = gt->engine_class[class][inst];
		}
		if (nsibling < 2)
			continue;

		err = FUNC1(i915, siblings, nsibling);
		if (err)
			goto out_unlock;
	}

out_unlock:
	FUNC3(&i915->drm.struct_mutex);
	return err;
}