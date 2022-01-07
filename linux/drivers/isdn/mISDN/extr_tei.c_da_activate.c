
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manager {int datimer; } ;
struct FsmInst {scalar_t__ state; struct manager* userdata; } ;


 int ST_L1_ACTIV ;
 scalar_t__ ST_L1_DEACT_PENDING ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmDelTimer (int *,int) ;

__attribute__((used)) static void
da_activate(struct FsmInst *fi, int event, void *arg)
{
 struct manager *mgr = fi->userdata;

 if (fi->state == ST_L1_DEACT_PENDING)
  mISDN_FsmDelTimer(&mgr->datimer, 1);
 mISDN_FsmChangeState(fi, ST_L1_ACTIV);
}
