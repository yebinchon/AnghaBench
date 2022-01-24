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
struct send_context {int /*<<< orphan*/  hw_context; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREDIT_FORCE ; 
 int /*<<< orphan*/  CREDIT_FORCE_FORCE_RETURN_SMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct send_context *sc)
{
	if (!sc)
		return;

	/* a 0->1 transition schedules a credit return */
	FUNC2(sc->dd, sc->hw_context, FUNC0(CREDIT_FORCE),
			FUNC0(CREDIT_FORCE_FORCE_RETURN_SMASK));
	/*
	 * Ensure that the write is flushed and the credit return is
	 * scheduled. We care more about the 0 -> 1 transition.
	 */
	FUNC1(sc->dd, sc->hw_context, FUNC0(CREDIT_FORCE));
	/* set back to 0 for next time */
	FUNC2(sc->dd, sc->hw_context, FUNC0(CREDIT_FORCE), 0);
}