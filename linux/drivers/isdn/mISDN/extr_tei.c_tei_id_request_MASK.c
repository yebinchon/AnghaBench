#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* printdebug ) (TYPE_2__*,char*,scalar_t__) ;} ;
struct teimgr {scalar_t__ ri; int nval; int /*<<< orphan*/  tval; int /*<<< orphan*/  timer; int /*<<< orphan*/  mgr; TYPE_2__ tei_m; TYPE_1__* l2; } ;
struct FsmInst {struct teimgr* userdata; } ;
struct TYPE_4__ {scalar_t__ tei; } ;

/* Variables and functions */
 int DEBUG_L2_TEI ; 
 int /*<<< orphan*/  EV_TIMER ; 
 scalar_t__ GROUP_TEI ; 
 int /*<<< orphan*/  ID_REQUEST ; 
 int /*<<< orphan*/  ST_TEI_IDREQ ; 
 int* debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct FsmInst *fi, int event, void *arg)
{
	struct teimgr *tm = fi->userdata;

	if (tm->l2->tei != GROUP_TEI) {
		tm->tei_m.printdebug(&tm->tei_m,
				     "assign request for already assigned tei %d",
				     tm->l2->tei);
		return;
	}
	tm->ri = FUNC3();
	if (*debug & DEBUG_L2_TEI)
		tm->tei_m.printdebug(&tm->tei_m,
				     "assign request ri %d", tm->ri);
	FUNC2(tm->mgr, ID_REQUEST, tm->ri, GROUP_TEI);
	FUNC1(fi, ST_TEI_IDREQ);
	FUNC0(&tm->timer, tm->tval, EV_TIMER, NULL, 1);
	tm->nval = 3;
}