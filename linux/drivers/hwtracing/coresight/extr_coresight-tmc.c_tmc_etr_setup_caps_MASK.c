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
typedef  int u32 ;
struct tmc_drvdata {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int TMC_DEVID_AXIAW_MASK ; 
 int TMC_DEVID_AXIAW_SHIFT ; 
 int TMC_DEVID_AXIAW_VALID ; 
 int TMC_DEVID_NOSCAT ; 
 int /*<<< orphan*/  TMC_ETR_SG ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct tmc_drvdata* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct tmc_drvdata*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tmc_drvdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *parent, u32 devid, void *dev_caps)
{
	int rc;
	u32 dma_mask = 0;
	struct tmc_drvdata *drvdata = FUNC2(parent);

	if (!FUNC6(drvdata))
		return -EACCES;

	/* Set the unadvertised capabilities */
	FUNC7(drvdata, (u32)(unsigned long)dev_caps);

	if (!(devid & TMC_DEVID_NOSCAT) && FUNC5(parent))
		FUNC8(drvdata, TMC_ETR_SG);

	/* Check if the AXI address width is available */
	if (devid & TMC_DEVID_AXIAW_VALID)
		dma_mask = ((devid >> TMC_DEVID_AXIAW_SHIFT) &
				TMC_DEVID_AXIAW_MASK);

	/*
	 * Unless specified in the device configuration, ETR uses a 40-bit
	 * AXI master in place of the embedded SRAM of ETB/ETF.
	 */
	switch (dma_mask) {
	case 32:
	case 40:
	case 44:
	case 48:
	case 52:
		FUNC3(parent, "Detected dma mask %dbits\n", dma_mask);
		break;
	default:
		dma_mask = 40;
	}

	rc = FUNC4(parent, FUNC0(dma_mask));
	if (rc)
		FUNC1(parent, "Failed to setup DMA mask: %d\n", rc);
	return rc;
}