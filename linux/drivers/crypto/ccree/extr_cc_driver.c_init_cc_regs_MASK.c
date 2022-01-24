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
struct device {int dummy; } ;
struct cc_drvdata {scalar_t__ hw_rev; unsigned int comp_mask; scalar_t__ coherent; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXIM_CACHE_PARAMS ; 
 int /*<<< orphan*/  AXIM_CFG ; 
 unsigned int CC_AXI_ERR_IRQ_MASK ; 
 unsigned int CC_AXI_IRQ_MASK ; 
 int CC_COHERENT_CACHE_PARAMS ; 
 unsigned int CC_GPR0_IRQ_MASK ; 
 scalar_t__ CC_HW_REV_712 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_ICR ; 
 int /*<<< orphan*/  HOST_IMR ; 
 int /*<<< orphan*/  HOST_IRR ; 
 unsigned int FUNC1 (struct cc_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_drvdata*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int,...) ; 
 struct device* FUNC4 (struct cc_drvdata*) ; 

int FUNC5(struct cc_drvdata *drvdata, bool is_probe)
{
	unsigned int val, cache_params;
	struct device *dev = FUNC4(drvdata);

	/* Unmask all AXI interrupt sources AXI_CFG1 register   */
	/* AXI interrupt config are obsoleted startign at cc7x3 */
	if (drvdata->hw_rev <= CC_HW_REV_712) {
		val = FUNC1(drvdata, FUNC0(AXIM_CFG));
		FUNC2(drvdata, FUNC0(AXIM_CFG), val & ~CC_AXI_IRQ_MASK);
		FUNC3(dev, "AXIM_CFG=0x%08X\n",
			FUNC1(drvdata, FUNC0(AXIM_CFG)));
	}

	/* Clear all pending interrupts */
	val = FUNC1(drvdata, FUNC0(HOST_IRR));
	FUNC3(dev, "IRR=0x%08X\n", val);
	FUNC2(drvdata, FUNC0(HOST_ICR), val);

	/* Unmask relevant interrupt cause */
	val = drvdata->comp_mask | CC_AXI_ERR_IRQ_MASK;

	if (drvdata->hw_rev >= CC_HW_REV_712)
		val |= CC_GPR0_IRQ_MASK;

	FUNC2(drvdata, FUNC0(HOST_IMR), ~val);

	cache_params = (drvdata->coherent ? CC_COHERENT_CACHE_PARAMS : 0x0);

	val = FUNC1(drvdata, FUNC0(AXIM_CACHE_PARAMS));

	if (is_probe)
		FUNC3(dev, "Cache params previous: 0x%08X\n", val);

	FUNC2(drvdata, FUNC0(AXIM_CACHE_PARAMS), cache_params);
	val = FUNC1(drvdata, FUNC0(AXIM_CACHE_PARAMS));

	if (is_probe)
		FUNC3(dev, "Cache params current: 0x%08X (expect: 0x%08X)\n",
			val, cache_params);

	return 0;
}