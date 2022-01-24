#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
struct qib_pportdata {scalar_t__ link_speed_enabled; int lastibcstat; int /*<<< orphan*/  port; TYPE_3__* dd; TYPE_1__* cpspec; } ;
struct TYPE_7__ {int /*<<< orphan*/  unit; TYPE_2__* cspec; } ;
struct TYPE_6__ {scalar_t__ r1; } ;
struct TYPE_5__ {int qdr_reforce; int qdr_dfe_on; scalar_t__ qdr_dfe_time; int /*<<< orphan*/  chase_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBCStatusA_0 ; 
#define  IB_7322_LT_STATE_CFGENH 131 
 int IB_7322_LT_STATE_CFGIDLE ; 
#define  IB_7322_LT_STATE_CFGRCVFCFG 130 
 int IB_7322_LT_STATE_CFGTEST ; 
 int IB_7322_LT_STATE_CFGWAITENH ; 
#define  IB_7322_LT_STATE_CFGWAITRMT 129 
 int IB_7322_LT_STATE_LINKUP ; 
 int IB_7322_LT_STATE_POLLACTIVE ; 
 int IB_7322_LT_STATE_SLEEPQUIET ; 
#define  IB_7322_LT_STATE_TXREVLANES 128 
 int IB_PHYSPORTSTATE_LINK_ERR_RECOVER ; 
 int IB_PHYSPORTSTATE_RECOVERY_IDLE ; 
 int IB_PHYSPORTSTATE_RECOVERY_RETRAIN ; 
 int IB_PHYSPORTSTATE_RECOVERY_WAITRMT ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  LinkSpeedQDR ; 
 int /*<<< orphan*/  LinkTrainingState ; 
 int /*<<< orphan*/  QDR_STATIC_ADAPT_DOWN ; 
 int /*<<< orphan*/  QDR_STATIC_ADAPT_DOWN_R1 ; 
 int /*<<< orphan*/  QIB_CHASE_TIME ; 
 scalar_t__ QIB_IB_QDR ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct qib_pportdata *ppd, u64 ibcst)
{
	u8 ibclt;
	unsigned long tnow;

	ibclt = (u8)FUNC2(ibcst, IBCStatusA_0, LinkTrainingState);

	/*
	 * Detect and handle the state chase issue, where we can
	 * get stuck if we are unlucky on timing on both sides of
	 * the link.   If we are, we disable, set a timer, and
	 * then re-enable.
	 */
	switch (ibclt) {
	case IB_7322_LT_STATE_CFGRCVFCFG:
	case IB_7322_LT_STATE_CFGWAITRMT:
	case IB_7322_LT_STATE_TXREVLANES:
	case IB_7322_LT_STATE_CFGENH:
		tnow = jiffies;
		if (ppd->cpspec->chase_end &&
		     FUNC12(tnow, ppd->cpspec->chase_end))
			FUNC5(ppd, tnow, ibclt);
		else if (!ppd->cpspec->chase_end)
			ppd->cpspec->chase_end = tnow + QIB_CHASE_TIME;
		break;
	default:
		ppd->cpspec->chase_end = 0;
		break;
	}

	if (((ibclt >= IB_7322_LT_STATE_CFGTEST &&
	      ibclt <= IB_7322_LT_STATE_CFGWAITENH) ||
	     ibclt == IB_7322_LT_STATE_LINKUP) &&
	    (ibcst & FUNC3(IBCStatusA_0, LinkSpeedQDR))) {
		FUNC6(ppd);
		ppd->cpspec->qdr_reforce = 1;
		if (!ppd->dd->cspec->r1)
			FUNC11(ppd, 0);
	} else if (ppd->cpspec->qdr_reforce &&
		(ibcst & FUNC3(IBCStatusA_0, LinkSpeedQDR)) &&
		 (ibclt == IB_7322_LT_STATE_CFGENH ||
		ibclt == IB_7322_LT_STATE_CFGIDLE ||
		ibclt == IB_7322_LT_STATE_LINKUP))
		FUNC6(ppd);

	if ((FUNC1(ppd->dd) || FUNC0(ppd->dd)) &&
	    ppd->link_speed_enabled == QIB_IB_QDR &&
	    (ibclt == IB_7322_LT_STATE_CFGTEST ||
	     ibclt == IB_7322_LT_STATE_CFGENH ||
	     (ibclt >= IB_7322_LT_STATE_POLLACTIVE &&
	      ibclt <= IB_7322_LT_STATE_SLEEPQUIET)))
		FUNC4(ppd);

	if (ibclt != IB_7322_LT_STATE_LINKUP) {
		u8 ltstate = FUNC9(ibcst);
		u8 pibclt = (u8)FUNC2(ppd->lastibcstat, IBCStatusA_0,
					  LinkTrainingState);
		if (!ppd->dd->cspec->r1 &&
		    pibclt == IB_7322_LT_STATE_LINKUP &&
		    ltstate != IB_PHYSPORTSTATE_LINK_ERR_RECOVER &&
		    ltstate != IB_PHYSPORTSTATE_RECOVERY_RETRAIN &&
		    ltstate != IB_PHYSPORTSTATE_RECOVERY_WAITRMT &&
		    ltstate != IB_PHYSPORTSTATE_RECOVERY_IDLE)
			/* If the link went down (but no into recovery,
			 * turn LOS back on */
			FUNC11(ppd, 1);
		if (!ppd->cpspec->qdr_dfe_on &&
		    ibclt <= IB_7322_LT_STATE_SLEEPQUIET) {
			ppd->cpspec->qdr_dfe_on = 1;
			ppd->cpspec->qdr_dfe_time = 0;
			/* On link down, reenable QDR adaptation */
			FUNC10(ppd, FUNC7(2),
					    ppd->dd->cspec->r1 ?
					    QDR_STATIC_ADAPT_DOWN_R1 :
					    QDR_STATIC_ADAPT_DOWN);
			FUNC8(
				"IB%u:%u re-enabled QDR adaptation ibclt %x\n",
				ppd->dd->unit, ppd->port, ibclt);
		}
	}
}