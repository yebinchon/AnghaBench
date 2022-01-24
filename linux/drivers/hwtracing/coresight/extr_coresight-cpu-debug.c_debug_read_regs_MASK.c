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
typedef  void* u32 ;
struct debug_drvdata {scalar_t__ edpcsr; scalar_t__ base; void* edvidsr; scalar_t__ edvidsr_present; void* edcidsr; scalar_t__ edcidsr_present; void* edpcsr_hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_64BIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ EDCIDSR ; 
 scalar_t__ EDPCSR ; 
 scalar_t__ EDPCSR_HI ; 
 scalar_t__ EDPCSR_PROHIBITED ; 
 scalar_t__ EDPRCR ; 
 scalar_t__ EDVIDSR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct debug_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct debug_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct debug_drvdata*) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct debug_drvdata *drvdata)
{
	u32 save_edprcr;

	FUNC1(drvdata->base);

	/* Unlock os lock */
	FUNC5(drvdata);

	/* Save EDPRCR register */
	save_edprcr = FUNC6(drvdata->base + EDPRCR);

	/*
	 * Ensure CPU power domain is enabled to let registers
	 * are accessiable.
	 */
	FUNC4(drvdata);

	if (!FUNC3(drvdata))
		goto out;

	drvdata->edpcsr = FUNC6(drvdata->base + EDPCSR);

	/*
	 * As described in ARM DDI 0487A.k, if the processing
	 * element (PE) is in debug state, or sample-based
	 * profiling is prohibited, EDPCSR reads as 0xFFFFFFFF;
	 * EDCIDSR, EDVIDSR and EDPCSR_HI registers also become
	 * UNKNOWN state. So directly bail out for this case.
	 */
	if (drvdata->edpcsr == EDPCSR_PROHIBITED)
		goto out;

	/*
	 * A read of the EDPCSR normally has the side-effect of
	 * indirectly writing to EDCIDSR, EDVIDSR and EDPCSR_HI;
	 * at this point it's safe to read value from them.
	 */
	if (FUNC2(CONFIG_64BIT))
		drvdata->edpcsr_hi = FUNC6(drvdata->base + EDPCSR_HI);

	if (drvdata->edcidsr_present)
		drvdata->edcidsr = FUNC6(drvdata->base + EDCIDSR);

	if (drvdata->edvidsr_present)
		drvdata->edvidsr = FUNC6(drvdata->base + EDVIDSR);

out:
	/* Restore EDPRCR register */
	FUNC7(save_edprcr, drvdata->base + EDPRCR);

	FUNC0(drvdata->base);
}