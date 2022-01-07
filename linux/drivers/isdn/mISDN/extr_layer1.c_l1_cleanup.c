
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int l1fsm_s ;
 int mISDN_FsmFree (int *) ;

void
l1_cleanup(void)
{
 mISDN_FsmFree(&l1fsm_s);
}
