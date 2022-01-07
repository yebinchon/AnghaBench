
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct qib_pportdata {TYPE_2__* cpspec; } ;
struct qib_chippport_specific {struct qib_pportdata* ppd; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct TYPE_4__ {TYPE_1__ chase_timer; } ;


 int QLOGIC_IB_IBCC_LINKCMD_DOWN ;
 int QLOGIC_IB_IBCC_LINKINITCMD_POLL ;
 int chase_timer ;
 struct qib_chippport_specific* cp ;
 struct qib_chippport_specific* from_timer (int ,struct timer_list*,int ) ;
 int qib_set_ib_7322_lstate (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static void reenable_chase(struct timer_list *t)
{
 struct qib_chippport_specific *cp = from_timer(cp, t, chase_timer);
 struct qib_pportdata *ppd = cp->ppd;

 ppd->cpspec->chase_timer.expires = 0;
 qib_set_ib_7322_lstate(ppd, QLOGIC_IB_IBCC_LINKCMD_DOWN,
  QLOGIC_IB_IBCC_LINKINITCMD_POLL);
}
