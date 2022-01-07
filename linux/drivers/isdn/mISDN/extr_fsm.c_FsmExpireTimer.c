
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct FsmTimer {int arg; int event; TYPE_1__* fi; } ;
struct TYPE_3__ {int (* printdebug ) (TYPE_1__*,char*,long) ;scalar_t__ debug; } ;


 struct FsmTimer* from_timer (int ,struct timer_list*,int ) ;
 struct FsmTimer* ft ;
 int mISDN_FsmEvent (TYPE_1__*,int ,int ) ;
 int stub1 (TYPE_1__*,char*,long) ;
 int tl ;

__attribute__((used)) static void
FsmExpireTimer(struct timer_list *t)
{
 struct FsmTimer *ft = from_timer(ft, t, tl);




 mISDN_FsmEvent(ft->fi, ft->event, ft->arg);
}
