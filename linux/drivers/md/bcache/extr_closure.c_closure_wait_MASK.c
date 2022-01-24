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
struct closure_waitlist {int /*<<< orphan*/  list; } ;
struct closure {int /*<<< orphan*/  list; int /*<<< orphan*/  remaining; } ;

/* Variables and functions */
 int CLOSURE_WAITING ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct closure*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC4(struct closure_waitlist *waitlist, struct closure *cl)
{
	if (FUNC1(&cl->remaining) & CLOSURE_WAITING)
		return false;

	FUNC2(cl, _RET_IP_);
	FUNC0(CLOSURE_WAITING + 1, &cl->remaining);
	FUNC3(&cl->list, &waitlist->list);

	return true;
}