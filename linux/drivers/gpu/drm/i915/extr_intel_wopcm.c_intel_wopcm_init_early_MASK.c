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
struct intel_wopcm {int size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int GEN11_WOPCM_SIZE ; 
 int GEN9_WOPCM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC3 (struct intel_wopcm*) ; 

void FUNC4(struct intel_wopcm *wopcm)
{
	struct drm_i915_private *i915 = FUNC3(wopcm);

	if (!FUNC1(i915))
		return;

	if (FUNC2(i915) >= 11)
		wopcm->size = GEN11_WOPCM_SIZE;
	else
		wopcm->size = GEN9_WOPCM_SIZE;

	FUNC0(i915->drm.dev, "WOPCM: %uK\n", wopcm->size / 1024);
}