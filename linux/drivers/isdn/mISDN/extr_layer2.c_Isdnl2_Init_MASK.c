#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {int /*<<< orphan*/  strState; int /*<<< orphan*/  strEvent; int /*<<< orphan*/  event_count; int /*<<< orphan*/  state_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2FnList ; 
 int /*<<< orphan*/  L2_EVENT_COUNT ; 
 int /*<<< orphan*/  L2_STATE_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X75SLP ; 
 int /*<<< orphan*/ * debug ; 
 TYPE_1__ l2fsm ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  strL2Event ; 
 int /*<<< orphan*/  strL2State ; 

int
FUNC6(u_int *deb)
{
	int res;
	debug = deb;
	FUNC4(&X75SLP);
	l2fsm.state_count = L2_STATE_COUNT;
	l2fsm.event_count = L2_EVENT_COUNT;
	l2fsm.strEvent = strL2Event;
	l2fsm.strState = strL2State;
	res = FUNC3(&l2fsm, L2FnList, FUNC0(L2FnList));
	if (res)
		goto error;
	res = FUNC1(deb);
	if (res)
		goto error_fsm;
	return 0;

error_fsm:
	FUNC2(&l2fsm);
error:
	FUNC5(&X75SLP);
	return res;
}