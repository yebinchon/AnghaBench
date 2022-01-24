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
struct stm_drvdata {int stmhebsr; int stmheter; int stmheer; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ STMHEBSR ; 
 scalar_t__ STMHEER ; 
 scalar_t__ STMHEMCR ; 
 scalar_t__ STMHETER ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct stm_drvdata *drvdata)
{
	FUNC1(drvdata->base);

	FUNC2(drvdata->stmhebsr, drvdata->base + STMHEBSR);
	FUNC2(drvdata->stmheter, drvdata->base + STMHETER);
	FUNC2(drvdata->stmheer, drvdata->base + STMHEER);
	FUNC2(0x01 |	/* Enable HW event tracing */
		       0x04,	/* Error detection on event tracing */
		       drvdata->base + STMHEMCR);

	FUNC0(drvdata->base);
}