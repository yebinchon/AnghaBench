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
typedef  int u32 ;
struct etb_drvdata {scalar_t__ base; TYPE_1__* csdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ETB_CTL_REG ; 
 scalar_t__ ETB_FFCR ; 
 int /*<<< orphan*/  ETB_FFCR_BIT ; 
 int ETB_FFCR_FON_MAN ; 
 int ETB_FFCR_STOP_FI ; 
 scalar_t__ ETB_FFSR ; 
 int /*<<< orphan*/  ETB_FFSR_BIT ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct etb_drvdata *drvdata)
{
	u32 ffcr;
	struct device *dev = &drvdata->csdev->dev;

	FUNC1(drvdata->base);

	ffcr = FUNC4(drvdata->base + ETB_FFCR);
	/* stop formatter when a stop has completed */
	ffcr |= ETB_FFCR_STOP_FI;
	FUNC5(ffcr, drvdata->base + ETB_FFCR);
	/* manually generate a flush of the system */
	ffcr |= ETB_FFCR_FON_MAN;
	FUNC5(ffcr, drvdata->base + ETB_FFCR);

	if (FUNC2(drvdata->base, ETB_FFCR, ETB_FFCR_BIT, 0)) {
		FUNC3(dev,
		"timeout while waiting for completion of Manual Flush\n");
	}

	/* disable trace capture */
	FUNC5(0x0, drvdata->base + ETB_CTL_REG);

	if (FUNC2(drvdata->base, ETB_FFSR, ETB_FFSR_BIT, 1)) {
		FUNC3(dev,
			"timeout while waiting for Formatter to Stop\n");
	}

	FUNC0(drvdata->base);
}