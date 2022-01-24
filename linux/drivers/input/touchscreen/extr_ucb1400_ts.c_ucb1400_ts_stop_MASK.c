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
struct ucb1400_ts {int stopped; int /*<<< orphan*/  ac97; int /*<<< orphan*/  irq; int /*<<< orphan*/  ts_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_TS_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ucb1400_ts *ucb)
{
	/* Signal IRQ thread to stop polling and disable the handler. */
	ucb->stopped = true;
	FUNC1();
	FUNC4(&ucb->ts_wait);
	FUNC0(ucb->irq);

	FUNC3(ucb);
	FUNC2(ucb->ac97, UCB_TS_CR, 0);
}