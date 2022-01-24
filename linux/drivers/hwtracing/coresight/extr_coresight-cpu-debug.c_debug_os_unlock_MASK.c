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
struct debug_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ EDOSLAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct debug_drvdata *drvdata)
{
	/* Unlocks the debug registers */
	FUNC1(0x0, drvdata->base + EDOSLAR);

	/* Make sure the registers are unlocked before accessing */
	FUNC0();
}