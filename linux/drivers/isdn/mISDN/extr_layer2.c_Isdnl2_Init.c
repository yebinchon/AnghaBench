
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int strState; int strEvent; int event_count; int state_count; } ;


 int ARRAY_SIZE (int ) ;
 int L2FnList ;
 int L2_EVENT_COUNT ;
 int L2_STATE_COUNT ;
 int TEIInit (int *) ;
 int X75SLP ;
 int * debug ;
 TYPE_1__ l2fsm ;
 int mISDN_FsmFree (TYPE_1__*) ;
 int mISDN_FsmNew (TYPE_1__*,int ,int ) ;
 int mISDN_register_Bprotocol (int *) ;
 int mISDN_unregister_Bprotocol (int *) ;
 int strL2Event ;
 int strL2State ;

int
Isdnl2_Init(u_int *deb)
{
 int res;
 debug = deb;
 mISDN_register_Bprotocol(&X75SLP);
 l2fsm.state_count = L2_STATE_COUNT;
 l2fsm.event_count = L2_EVENT_COUNT;
 l2fsm.strEvent = strL2Event;
 l2fsm.strState = strL2State;
 res = mISDN_FsmNew(&l2fsm, L2FnList, ARRAY_SIZE(L2FnList));
 if (res)
  goto error;
 res = TEIInit(deb);
 if (res)
  goto error_fsm;
 return 0;

error_fsm:
 mISDN_FsmFree(&l2fsm);
error:
 mISDN_unregister_Bprotocol(&X75SLP);
 return res;
}
