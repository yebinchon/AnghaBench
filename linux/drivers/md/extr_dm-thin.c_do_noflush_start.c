
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct noflush_work {int pw; TYPE_1__* tc; } ;
struct TYPE_2__ {int requeue_mode; } ;


 int pool_work_complete (int *) ;
 int requeue_io (TYPE_1__*) ;
 struct noflush_work* to_noflush (struct work_struct*) ;

__attribute__((used)) static void do_noflush_start(struct work_struct *ws)
{
 struct noflush_work *w = to_noflush(ws);
 w->tc->requeue_mode = 1;
 requeue_io(w->tc);
 pool_work_complete(&w->pw);
}
