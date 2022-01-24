#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  next; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct c4iw_ep {TYPE_2__ entry; TYPE_1__ com; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMEOUT ; 
 struct c4iw_ep* ep ; 
 struct c4iw_ep* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skb_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout_list ; 
 int /*<<< orphan*/  timeout_lock ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  workq ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct c4iw_ep *ep = FUNC0(ep, t, timer);
	int kickit = 0;

	FUNC3(&timeout_lock);
	if (!FUNC5(TIMEOUT, &ep->com.flags)) {
		/*
		 * Only insert if it is not already on the list.
		 */
		if (!ep->entry.next) {
			FUNC1(&ep->entry, &timeout_list);
			kickit = 1;
		}
	}
	FUNC4(&timeout_lock);
	if (kickit)
		FUNC2(workq, &skb_work);
}