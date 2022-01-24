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
struct funnel_drvdata {int priority; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNNEL_ENSx_MASK ; 
 scalar_t__ FUNNEL_FUNCTL ; 
 int FUNNEL_HOLDTIME ; 
 int FUNNEL_HOLDTIME_MASK ; 
 scalar_t__ FUNNEL_PRICTL ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct funnel_drvdata *drvdata, int port)
{
	u32 functl;
	int rc = 0;

	FUNC1(drvdata->base);

	functl = FUNC3(drvdata->base + FUNNEL_FUNCTL);
	/* Claim the device only when we enable the first slave */
	if (!(functl & FUNNEL_ENSx_MASK)) {
		rc = FUNC2(drvdata->base);
		if (rc)
			goto done;
	}

	functl &= ~FUNNEL_HOLDTIME_MASK;
	functl |= FUNNEL_HOLDTIME;
	functl |= (1 << port);
	FUNC4(functl, drvdata->base + FUNNEL_FUNCTL);
	FUNC4(drvdata->priority, drvdata->base + FUNNEL_PRICTL);
done:
	FUNC0(drvdata->base);
	return rc;
}