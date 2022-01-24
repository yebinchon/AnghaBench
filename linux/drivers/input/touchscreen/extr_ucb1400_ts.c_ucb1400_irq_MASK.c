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
struct ucb1400_ts {int irq; int /*<<< orphan*/  stopped; int /*<<< orphan*/  ts_idev; int /*<<< orphan*/  ts_wait; int /*<<< orphan*/  ac97; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  UCB1400_TS_POLL_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucb1400_ts*) ; 
 int FUNC8 (struct ucb1400_ts*) ; 
 unsigned int FUNC9 (struct ucb1400_ts*) ; 
 unsigned int FUNC10 (struct ucb1400_ts*) ; 
 unsigned int FUNC11 (struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irqnr, void *devid)
{
	struct ucb1400_ts *ucb = devid;
	unsigned int x, y, p;
	bool penup;

	if (FUNC13(irqnr != ucb->irq))
		return IRQ_NONE;

	FUNC4(ucb);

	/* Start with a small delay before checking pendown state */
	FUNC1(UCB1400_TS_POLL_PERIOD);

	while (!ucb->stopped && !(penup = FUNC8(ucb))) {

		FUNC3(ucb->ac97);
		x = FUNC10(ucb);
		y = FUNC11(ucb);
		p = FUNC9(ucb);
		FUNC2(ucb->ac97);

		FUNC12(ucb->ts_idev, p, x, y);

		FUNC14(ucb->ts_wait, ucb->stopped,
				   FUNC0(UCB1400_TS_POLL_PERIOD));
	}

	FUNC5(ucb->ts_idev);

	if (!ucb->stopped) {
		/* Switch back to interrupt mode. */
		FUNC7(ucb);
		FUNC6(ucb);
	}

	return IRQ_HANDLED;
}