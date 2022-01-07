
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qib_pportdata {TYPE_1__* cpspec; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {TYPE_2__ chase_timer; scalar_t__ chase_end; } ;


 scalar_t__ QIB_CHASE_DIS_TIME ;
 int QLOGIC_IB_IBCC_LINKCMD_DOWN ;
 int QLOGIC_IB_IBCC_LINKINITCMD_DISABLE ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int qib_chase ;
 int qib_set_ib_7322_lstate (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static void disable_chase(struct qib_pportdata *ppd, unsigned long tnow,
  u8 ibclt)
{
 ppd->cpspec->chase_end = 0;

 if (!qib_chase)
  return;

 qib_set_ib_7322_lstate(ppd, QLOGIC_IB_IBCC_LINKCMD_DOWN,
  QLOGIC_IB_IBCC_LINKINITCMD_DISABLE);
 ppd->cpspec->chase_timer.expires = jiffies + QIB_CHASE_DIS_TIME;
 add_timer(&ppd->cpspec->chase_timer);
}
