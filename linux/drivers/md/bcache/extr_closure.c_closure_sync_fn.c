
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct closure_syncer {int done; int task; } ;
struct closure {struct closure_syncer* s; } ;


 struct task_struct* READ_ONCE (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void closure_sync_fn(struct closure *cl)
{
 struct closure_syncer *s = cl->s;
 struct task_struct *p;

 rcu_read_lock();
 p = READ_ONCE(s->task);
 s->done = 1;
 wake_up_process(p);
 rcu_read_unlock();
}
