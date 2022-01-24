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
struct ucb1400_ts {int stopped; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucb1400_ts*) ; 

__attribute__((used)) static void FUNC4(struct ucb1400_ts *ucb)
{
	/* Tell IRQ thread that it may poll the device. */
	ucb->stopped = false;
	FUNC1();

	FUNC3(ucb);
	FUNC2(ucb);

	FUNC0(ucb->irq);
}