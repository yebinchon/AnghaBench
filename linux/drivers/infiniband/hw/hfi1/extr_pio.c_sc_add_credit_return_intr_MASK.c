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
struct send_context {scalar_t__ credit_intr_count; int /*<<< orphan*/  credit_ctrl_lock; int /*<<< orphan*/  credit_ctrl; int /*<<< orphan*/  hw_context; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREDIT_CTRL ; 
 int /*<<< orphan*/  CREDIT_CTRL_CREDIT_INTR_SMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct send_context *sc)
{
	unsigned long flags;

	/* lock must surround both the count change and the CSR update */
	FUNC1(&sc->credit_ctrl_lock, flags);
	if (sc->credit_intr_count == 0) {
		sc->credit_ctrl |= FUNC0(CREDIT_CTRL_CREDIT_INTR_SMASK);
		FUNC3(sc->dd, sc->hw_context,
				FUNC0(CREDIT_CTRL), sc->credit_ctrl);
	}
	sc->credit_intr_count++;
	FUNC2(&sc->credit_ctrl_lock, flags);
}