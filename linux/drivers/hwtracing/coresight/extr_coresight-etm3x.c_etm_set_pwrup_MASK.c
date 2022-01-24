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
struct etm_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ETMPDCR ; 
 int /*<<< orphan*/  ETMPDCR_PWD_UP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct etm_drvdata *drvdata)
{
	u32 etmpdcr;

	etmpdcr = FUNC2(drvdata->base + ETMPDCR);
	etmpdcr |= ETMPDCR_PWD_UP;
	FUNC3(etmpdcr, drvdata->base + ETMPDCR);
	/* Ensure pwrup completes before subsequent cp14 accesses */
	FUNC1();
	FUNC0();
}