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
struct timer_list {int dummy; } ;
struct altera_mbox {int /*<<< orphan*/  rxpoll_timer; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBOX_POLLING_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct altera_mbox* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct altera_mbox* mbox ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxpoll_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct altera_mbox *mbox = FUNC1(mbox, t, rxpoll_timer);

	FUNC0(mbox->chan);

	FUNC2(&mbox->rxpoll_timer,
		  jiffies + FUNC3(MBOX_POLLING_MS));
}