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
struct mbox_controller {int num_chans; int /*<<< orphan*/  poll_hrt; scalar_t__ txdone_poll; int /*<<< orphan*/ * chans; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  con_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mbox_controller *mbox)
{
	int i;

	if (!mbox)
		return;

	FUNC3(&con_mutex);

	FUNC1(&mbox->node);

	for (i = 0; i < mbox->num_chans; i++)
		FUNC2(&mbox->chans[i]);

	if (mbox->txdone_poll)
		FUNC0(&mbox->poll_hrt);

	FUNC4(&con_mutex);
}