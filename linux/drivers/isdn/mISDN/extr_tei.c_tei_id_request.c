
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* printdebug ) (TYPE_2__*,char*,scalar_t__) ;} ;
struct teimgr {scalar_t__ ri; int nval; int tval; int timer; int mgr; TYPE_2__ tei_m; TYPE_1__* l2; } ;
struct FsmInst {struct teimgr* userdata; } ;
struct TYPE_4__ {scalar_t__ tei; } ;


 int DEBUG_L2_TEI ;
 int EV_TIMER ;
 scalar_t__ GROUP_TEI ;
 int ID_REQUEST ;
 int ST_TEI_IDREQ ;
 int* debug ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int put_tei_msg (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ random_ri () ;
 int stub1 (TYPE_2__*,char*,scalar_t__) ;
 int stub2 (TYPE_2__*,char*,scalar_t__) ;

__attribute__((used)) static void
tei_id_request(struct FsmInst *fi, int event, void *arg)
{
 struct teimgr *tm = fi->userdata;

 if (tm->l2->tei != GROUP_TEI) {
  tm->tei_m.printdebug(&tm->tei_m,
         "assign request for already assigned tei %d",
         tm->l2->tei);
  return;
 }
 tm->ri = random_ri();
 if (*debug & DEBUG_L2_TEI)
  tm->tei_m.printdebug(&tm->tei_m,
         "assign request ri %d", tm->ri);
 put_tei_msg(tm->mgr, ID_REQUEST, tm->ri, GROUP_TEI);
 mISDN_FsmChangeState(fi, ST_TEI_IDREQ);
 mISDN_FsmAddTimer(&tm->timer, tm->tval, EV_TIMER, ((void*)0), 1);
 tm->nval = 3;
}
