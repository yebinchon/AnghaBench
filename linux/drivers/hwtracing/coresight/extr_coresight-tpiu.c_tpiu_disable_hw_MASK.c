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
struct tpiu_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FFCR_FON_MAN ; 
 int /*<<< orphan*/  FFCR_FON_MAN_BIT ; 
 int FFCR_STOP_FI ; 
 int /*<<< orphan*/  FFSR_FT_STOPPED_BIT ; 
 scalar_t__ TPIU_FFCR ; 
 scalar_t__ TPIU_FFSR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct tpiu_drvdata *drvdata)
{
	FUNC1(drvdata->base);

	/* Clear formatter and stop on flush */
	FUNC3(FFCR_STOP_FI, drvdata->base + TPIU_FFCR);
	/* Generate manual flush */
	FUNC3(FFCR_STOP_FI | FFCR_FON_MAN, drvdata->base + TPIU_FFCR);
	/* Wait for flush to complete */
	FUNC2(drvdata->base, TPIU_FFCR, FFCR_FON_MAN_BIT, 0);
	/* Wait for formatter to stop */
	FUNC2(drvdata->base, TPIU_FFSR, FFSR_FT_STOPPED_BIT, 1);

	FUNC0(drvdata->base);
}