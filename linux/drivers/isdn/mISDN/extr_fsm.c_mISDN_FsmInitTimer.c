
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmTimer {int tl; struct FsmInst* fi; } ;
struct FsmInst {int (* printdebug ) (struct FsmInst*,char*,long) ;scalar_t__ debug; } ;


 int FsmExpireTimer ;
 int stub1 (struct FsmInst*,char*,long) ;
 int timer_setup (int *,int ,int ) ;

void
mISDN_FsmInitTimer(struct FsmInst *fi, struct FsmTimer *ft)
{
 ft->fi = fi;




 timer_setup(&ft->tl, FsmExpireTimer, 0);
}
