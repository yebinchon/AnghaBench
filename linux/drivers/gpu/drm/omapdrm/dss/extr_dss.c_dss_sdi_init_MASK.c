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
typedef  int /*<<< orphan*/  u32 ;
struct dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DSS_PLL_CONTROL ; 
 int /*<<< orphan*/  DSS_SDI_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct dss_device *dss, int datapairs)
{
	u32 l;

	FUNC0(datapairs > 3 || datapairs < 1);

	l = FUNC2(dss, DSS_SDI_CONTROL);
	l = FUNC1(l, 0xf, 19, 15);		/* SDI_PDIV */
	l = FUNC1(l, datapairs-1, 3, 2);	/* SDI_PRSEL */
	l = FUNC1(l, 2, 1, 0);		/* SDI_BWSEL */
	FUNC3(dss, DSS_SDI_CONTROL, l);

	l = FUNC2(dss, DSS_PLL_CONTROL);
	l = FUNC1(l, 0x7, 25, 22);	/* SDI_PLL_FREQSEL */
	l = FUNC1(l, 0xb, 16, 11);	/* SDI_PLL_REGN */
	l = FUNC1(l, 0xb4, 10, 1);	/* SDI_PLL_REGM */
	FUNC3(dss, DSS_PLL_CONTROL, l);
}