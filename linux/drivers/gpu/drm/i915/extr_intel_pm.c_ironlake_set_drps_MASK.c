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
typedef  int u8 ;
typedef  int u16 ;
struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MEMCTL_CMD_CHFREQ ; 
 int MEMCTL_CMD_SHIFT ; 
 int MEMCTL_CMD_STS ; 
 int MEMCTL_FREQ_SHIFT ; 
 int MEMCTL_SFCAVM ; 
 int /*<<< orphan*/  MEMSWCTL ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mchdev_lock ; 

bool FUNC5(struct drm_i915_private *i915, u8 val)
{
	struct intel_uncore *uncore = &i915->uncore;
	u16 rgvswctl;

	FUNC4(&mchdev_lock);

	rgvswctl = FUNC2(uncore, MEMSWCTL);
	if (rgvswctl & MEMCTL_CMD_STS) {
		FUNC0("gpu busy, RCS change rejected\n");
		return false; /* still busy with another command */
	}

	rgvswctl = (MEMCTL_CMD_CHFREQ << MEMCTL_CMD_SHIFT) |
		(val << MEMCTL_FREQ_SHIFT) | MEMCTL_SFCAVM;
	FUNC3(uncore, MEMSWCTL, rgvswctl);
	FUNC1(uncore, MEMSWCTL);

	rgvswctl |= MEMCTL_CMD_STS;
	FUNC3(uncore, MEMSWCTL, rgvswctl);

	return true;
}