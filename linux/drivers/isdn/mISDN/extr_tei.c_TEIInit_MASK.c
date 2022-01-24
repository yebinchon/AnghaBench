#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_6__ {void* strState; void* strEvent; void* event_count; void* state_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* DEACT_EVENT_COUNT ; 
 void* DEACT_STATE_COUNT ; 
 int /*<<< orphan*/  DeactFnList ; 
 void* TEI_EVENT_COUNT ; 
 void* TEI_STATE_COUNT ; 
 int /*<<< orphan*/  TeiFnListNet ; 
 int /*<<< orphan*/  TeiFnListUser ; 
 TYPE_1__ deactfsm ; 
 int /*<<< orphan*/ * debug ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* strDeactEvent ; 
 void* strDeactState ; 
 void* strTeiEvent ; 
 void* strTeiState ; 
 TYPE_1__ teifsmn ; 
 TYPE_1__ teifsmu ; 

int FUNC3(u_int *deb)
{
	int res;
	debug = deb;
	teifsmu.state_count = TEI_STATE_COUNT;
	teifsmu.event_count = TEI_EVENT_COUNT;
	teifsmu.strEvent = strTeiEvent;
	teifsmu.strState = strTeiState;
	res = FUNC2(&teifsmu, TeiFnListUser, FUNC0(TeiFnListUser));
	if (res)
		goto error;
	teifsmn.state_count = TEI_STATE_COUNT;
	teifsmn.event_count = TEI_EVENT_COUNT;
	teifsmn.strEvent = strTeiEvent;
	teifsmn.strState = strTeiState;
	res = FUNC2(&teifsmn, TeiFnListNet, FUNC0(TeiFnListNet));
	if (res)
		goto error_smn;
	deactfsm.state_count =  DEACT_STATE_COUNT;
	deactfsm.event_count = DEACT_EVENT_COUNT;
	deactfsm.strEvent = strDeactEvent;
	deactfsm.strState = strDeactState;
	res = FUNC2(&deactfsm, DeactFnList, FUNC0(DeactFnList));
	if (res)
		goto error_deact;
	return 0;

error_deact:
	FUNC1(&teifsmn);
error_smn:
	FUNC1(&teifsmu);
error:
	return res;
}