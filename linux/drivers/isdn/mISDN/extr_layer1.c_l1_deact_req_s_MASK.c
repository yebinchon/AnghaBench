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
struct layer1 {int /*<<< orphan*/  Flags; int /*<<< orphan*/  timerX; } ;
struct FsmInst {struct layer1* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMER_DEACT ; 
 int /*<<< orphan*/  FLG_L1_DEACTTIMER ; 
 int /*<<< orphan*/  ST_L1_F3 ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct layer1 *l1 = fi->userdata;

	FUNC0(fi, ST_L1_F3);
	FUNC1(&l1->timerX, 550, EV_TIMER_DEACT, NULL, 2);
	FUNC2(FLG_L1_DEACTTIMER, &l1->Flags);
}