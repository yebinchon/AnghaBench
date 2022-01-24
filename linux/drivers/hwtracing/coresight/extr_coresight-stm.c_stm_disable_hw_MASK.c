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
struct stm_drvdata {scalar_t__ stmheer; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ STMTCSR ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct stm_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct stm_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct stm_drvdata *drvdata)
{
	u32 val;

	FUNC1(drvdata->base);

	val = FUNC2(drvdata->base + STMTCSR);
	val &= ~0x1; /* clear global STM enable [0] */
	FUNC5(val, drvdata->base + STMTCSR);

	FUNC0(drvdata->base);

	FUNC4(drvdata);
	if (drvdata->stmheer)
		FUNC3(drvdata);
}