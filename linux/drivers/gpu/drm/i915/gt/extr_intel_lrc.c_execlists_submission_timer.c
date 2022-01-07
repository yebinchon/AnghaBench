
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int tasklet; } ;
struct intel_engine_cs {TYPE_1__ execlists; } ;
struct TYPE_4__ {int timer; } ;


 struct intel_engine_cs* engine ;
 TYPE_2__ execlists ;
 struct intel_engine_cs* from_timer (int ,struct timer_list*,int ) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void execlists_submission_timer(struct timer_list *timer)
{
 struct intel_engine_cs *engine =
  from_timer(engine, timer, execlists.timer);


 tasklet_hi_schedule(&engine->execlists.tasklet);
}
