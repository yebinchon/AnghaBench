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
typedef  int u8 ;
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {int fmax; int fstart; int max_delay; int min_delay; int cur_delay; int last_count1; int last_count2; int /*<<< orphan*/  last_time2; int /*<<< orphan*/  last_time1; } ;
struct drm_i915_private {TYPE_1__ ips; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIEC ; 
 int /*<<< orphan*/  DDREC ; 
 int /*<<< orphan*/  DMIEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFXEC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MCPPCE_EN ; 
 int MEMCTL_CMD_STS ; 
 int /*<<< orphan*/  MEMIHYST ; 
 int /*<<< orphan*/  MEMINTREN ; 
 int MEMINT_CX_SUPR_EN ; 
 int MEMINT_EVAL_CHG_EN ; 
 int /*<<< orphan*/  MEMMODECTL ; 
 int MEMMODE_FMAX_MASK ; 
 int MEMMODE_FMAX_SHIFT ; 
 int MEMMODE_FMIN_MASK ; 
 int MEMMODE_FSTART_MASK ; 
 int MEMMODE_FSTART_SHIFT ; 
 int MEMMODE_SWMODE_EN ; 
 int /*<<< orphan*/  MEMSWCTL ; 
 int /*<<< orphan*/  PMMISC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PXVFREQ_PX_MASK ; 
 int PXVFREQ_PX_SHIFT ; 
 int /*<<< orphan*/  RCBMAXAVG ; 
 int /*<<< orphan*/  RCBMINAVG ; 
 int /*<<< orphan*/  RCDNEI ; 
 int /*<<< orphan*/  RCUPEI ; 
 int /*<<< orphan*/  TSC1 ; 
 int TSE ; 
 int /*<<< orphan*/  VIDSTART ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int,int) ; 

__attribute__((used)) static void FUNC15(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;
	u32 rgvmodectl;
	u8 fmax, fmin, fstart, vstart;

	FUNC12(&mchdev_lock);

	rgvmodectl = FUNC5(uncore, MEMMODECTL);

	/* Enable temp reporting */
	FUNC7(uncore, PMMISC, FUNC2(PMMISC) | MCPPCE_EN);
	FUNC7(uncore, TSC1, FUNC2(TSC1) | TSE);

	/* 100ms RC evaluation intervals */
	FUNC6(uncore, RCUPEI, 100000);
	FUNC6(uncore, RCDNEI, 100000);

	/* Set max/min thresholds to 90ms and 80ms respectively */
	FUNC6(uncore, RCBMAXAVG, 90000);
	FUNC6(uncore, RCBMINAVG, 80000);

	FUNC6(uncore, MEMIHYST, 1);

	/* Set up min, max, and cur for interrupt handling */
	fmax = (rgvmodectl & MEMMODE_FMAX_MASK) >> MEMMODE_FMAX_SHIFT;
	fmin = (rgvmodectl & MEMMODE_FMIN_MASK);
	fstart = (rgvmodectl & MEMMODE_FSTART_MASK) >>
		MEMMODE_FSTART_SHIFT;

	vstart = (FUNC5(uncore, FUNC3(fstart)) &
		  PXVFREQ_PX_MASK) >> PXVFREQ_PX_SHIFT;

	dev_priv->ips.fmax = fmax; /* IPS callback will increase this */
	dev_priv->ips.fstart = fstart;

	dev_priv->ips.max_delay = fstart;
	dev_priv->ips.min_delay = fmin;
	dev_priv->ips.cur_delay = fstart;

	FUNC0("fmax: %d, fmin: %d, fstart: %d\n",
			 fmax, fmin, fstart);

	FUNC6(uncore,
			   MEMINTREN,
			   MEMINT_CX_SUPR_EN | MEMINT_EVAL_CHG_EN);

	/*
	 * Interrupts will be enabled in ironlake_irq_postinstall
	 */

	FUNC6(uncore, VIDSTART, vstart);
	FUNC4(uncore, VIDSTART);

	rgvmodectl |= MEMMODE_SWMODE_EN;
	FUNC6(uncore, MEMMODECTL, rgvmodectl);

	if (FUNC14((FUNC5(uncore, MEMSWCTL) &
			     MEMCTL_CMD_STS) == 0, 10))
		FUNC1("stuck trying to change perf mode\n");
	FUNC11(1);

	FUNC8(dev_priv, fstart);

	dev_priv->ips.last_count1 =
		FUNC5(uncore, DMIEC) +
		FUNC5(uncore, DDREC) +
		FUNC5(uncore, CSIEC);
	dev_priv->ips.last_time1 = FUNC9(jiffies);
	dev_priv->ips.last_count2 = FUNC5(uncore, GFXEC);
	dev_priv->ips.last_time2 = FUNC10();

	FUNC13(&mchdev_lock);
}