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
struct funnel_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNNEL_ENSx_MASK ; 
 scalar_t__ FUNNEL_FUNCTL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct funnel_drvdata *drvdata,
				      int inport)
{
	u32 functl;

	FUNC1(drvdata->base);

	functl = FUNC3(drvdata->base + FUNNEL_FUNCTL);
	functl &= ~(1 << inport);
	FUNC4(functl, drvdata->base + FUNNEL_FUNCTL);

	/* Disclaim the device if none of the slaves are now active */
	if (!(functl & FUNNEL_ENSx_MASK))
		FUNC2(drvdata->base);

	FUNC0(drvdata->base);
}