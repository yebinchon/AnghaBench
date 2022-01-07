
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deactfsm ;
 int mISDN_FsmFree (int *) ;
 int teifsmn ;
 int teifsmu ;

void TEIFree(void)
{
 mISDN_FsmFree(&teifsmu);
 mISDN_FsmFree(&teifsmn);
 mISDN_FsmFree(&deactfsm);
}
