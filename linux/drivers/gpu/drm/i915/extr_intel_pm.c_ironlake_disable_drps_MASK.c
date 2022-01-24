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
typedef  int u16 ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fstart; } ;
struct drm_i915_private {TYPE_1__ ips; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEIER ; 
 int /*<<< orphan*/  DEIIR ; 
 int /*<<< orphan*/  DEIMR ; 
 int DE_PCU_EVENT ; 
 int MEMCTL_CMD_STS ; 
 int /*<<< orphan*/  MEMINTREN ; 
 int /*<<< orphan*/  MEMINTRSTS ; 
 int MEMINT_EVAL_CHG ; 
 int MEMINT_EVAL_CHG_EN ; 
 int /*<<< orphan*/  MEMSWCTL ; 
 int FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *i915)
{
	struct intel_uncore *uncore = &i915->uncore;
	u16 rgvswctl;

	FUNC5(&mchdev_lock);

	rgvswctl = FUNC1(uncore, MEMSWCTL);

	/* Ack interrupts, disable EFC interrupt */
	FUNC2(uncore,
			   MEMINTREN,
			   FUNC0(uncore, MEMINTREN) &
			   ~MEMINT_EVAL_CHG_EN);
	FUNC2(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
	FUNC2(uncore,
			   DEIER,
			   FUNC0(uncore, DEIER) & ~DE_PCU_EVENT);
	FUNC2(uncore, DEIIR, DE_PCU_EVENT);
	FUNC2(uncore,
			   DEIMR,
			   FUNC0(uncore, DEIMR) | DE_PCU_EVENT);

	/* Go back to the starting frequency */
	FUNC3(i915, i915->ips.fstart);
	FUNC4(1);
	rgvswctl |= MEMCTL_CMD_STS;
	FUNC2(uncore, MEMSWCTL, rgvswctl);
	FUNC4(1);

	FUNC6(&mchdev_lock);
}