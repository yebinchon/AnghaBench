
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cmdq_thread {int task_busy_list; } ;
struct cmdq {int suspended; int thread_nr; int clock; struct cmdq_thread* thread; } ;


 int clk_unprepare (int ) ;
 struct cmdq* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int list_empty (int *) ;

__attribute__((used)) static int cmdq_suspend(struct device *dev)
{
 struct cmdq *cmdq = dev_get_drvdata(dev);
 struct cmdq_thread *thread;
 int i;
 bool task_running = 0;

 cmdq->suspended = 1;

 for (i = 0; i < cmdq->thread_nr; i++) {
  thread = &cmdq->thread[i];
  if (!list_empty(&thread->task_busy_list)) {
   task_running = 1;
   break;
  }
 }

 if (task_running)
  dev_warn(dev, "exist running task(s) in suspend\n");

 clk_unprepare(cmdq->clock);

 return 0;
}
