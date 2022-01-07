
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {void* strState; void* strEvent; void* event_count; void* state_count; } ;


 int ARRAY_SIZE (int ) ;
 void* DEACT_EVENT_COUNT ;
 void* DEACT_STATE_COUNT ;
 int DeactFnList ;
 void* TEI_EVENT_COUNT ;
 void* TEI_STATE_COUNT ;
 int TeiFnListNet ;
 int TeiFnListUser ;
 TYPE_1__ deactfsm ;
 int * debug ;
 int mISDN_FsmFree (TYPE_1__*) ;
 int mISDN_FsmNew (TYPE_1__*,int ,int ) ;
 void* strDeactEvent ;
 void* strDeactState ;
 void* strTeiEvent ;
 void* strTeiState ;
 TYPE_1__ teifsmn ;
 TYPE_1__ teifsmu ;

int TEIInit(u_int *deb)
{
 int res;
 debug = deb;
 teifsmu.state_count = TEI_STATE_COUNT;
 teifsmu.event_count = TEI_EVENT_COUNT;
 teifsmu.strEvent = strTeiEvent;
 teifsmu.strState = strTeiState;
 res = mISDN_FsmNew(&teifsmu, TeiFnListUser, ARRAY_SIZE(TeiFnListUser));
 if (res)
  goto error;
 teifsmn.state_count = TEI_STATE_COUNT;
 teifsmn.event_count = TEI_EVENT_COUNT;
 teifsmn.strEvent = strTeiEvent;
 teifsmn.strState = strTeiState;
 res = mISDN_FsmNew(&teifsmn, TeiFnListNet, ARRAY_SIZE(TeiFnListNet));
 if (res)
  goto error_smn;
 deactfsm.state_count = DEACT_STATE_COUNT;
 deactfsm.event_count = DEACT_EVENT_COUNT;
 deactfsm.strEvent = strDeactEvent;
 deactfsm.strState = strDeactState;
 res = mISDN_FsmNew(&deactfsm, DeactFnList, ARRAY_SIZE(DeactFnList));
 if (res)
  goto error_deact;
 return 0;

error_deact:
 mISDN_FsmFree(&teifsmn);
error_smn:
 mISDN_FsmFree(&teifsmu);
error:
 return res;
}
