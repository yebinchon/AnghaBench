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
struct stm_drvdata {int traceid; scalar_t__ base; scalar_t__ stmheer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ STMSYNCR ; 
 scalar_t__ STMTCSR ; 
 int /*<<< orphan*/  FUNC2 (struct stm_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct stm_drvdata *drvdata)
{
	if (drvdata->stmheer)
		FUNC2(drvdata);

	FUNC3(drvdata);

	FUNC1(drvdata->base);

	/* 4096 byte between synchronisation packets */
	FUNC4(0xFFF, drvdata->base + STMSYNCR);
	FUNC4((drvdata->traceid << 16 | /* trace id */
			0x02 |			 /* timestamp enable */
			0x01),			 /* global STM enable */
			drvdata->base + STMTCSR);

	FUNC0(drvdata->base);
}