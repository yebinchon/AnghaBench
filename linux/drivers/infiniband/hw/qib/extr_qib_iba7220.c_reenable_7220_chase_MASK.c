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
struct qib_pportdata {TYPE_2__* cpspec; } ;
struct qib_chippport_specific {struct qib_pportdata pportdata; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct TYPE_4__ {TYPE_1__ chase_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLOGIC_IB_IBCC_LINKCMD_DOWN ; 
 int /*<<< orphan*/  QLOGIC_IB_IBCC_LINKINITCMD_POLL ; 
 int /*<<< orphan*/  chase_timer ; 
 struct qib_chippport_specific* cpspec ; 
 struct qib_chippport_specific* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct qib_chippport_specific *cpspec = FUNC0(cpspec, t,
							 chase_timer);
	struct qib_pportdata *ppd = &cpspec->pportdata;

	ppd->cpspec->chase_timer.expires = 0;
	FUNC1(ppd, QLOGIC_IB_IBCC_LINKCMD_DOWN,
		QLOGIC_IB_IBCC_LINKINITCMD_POLL);
}