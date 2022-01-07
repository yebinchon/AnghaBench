
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbox_chan {TYPE_1__* mbox; scalar_t__ con_priv; } ;
struct cmdq_thread {int task_busy_list; scalar_t__ base; scalar_t__ atomic_exec; scalar_t__ priority; } ;
struct cmdq_task {int list_entry; scalar_t__ pa_base; struct cmdq_pkt* pkt; struct cmdq_thread* thread; struct cmdq* cmdq; } ;
struct cmdq_pkt {scalar_t__ cmd_buf_size; scalar_t__ pa_base; } ;
struct cmdq {int suspended; int clock; } ;
struct TYPE_2__ {int dev; } ;


 unsigned long CMDQ_INST_SIZE ;
 scalar_t__ CMDQ_THR_CURR_ADDR ;
 scalar_t__ CMDQ_THR_ENABLED ;
 scalar_t__ CMDQ_THR_ENABLE_TASK ;
 scalar_t__ CMDQ_THR_END_ADDR ;
 scalar_t__ CMDQ_THR_IRQ_EN ;
 scalar_t__ CMDQ_THR_IRQ_ENABLE ;
 scalar_t__ CMDQ_THR_PRIORITY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 scalar_t__ clk_enable (int ) ;
 int cmdq_task_insert_into_thread (struct cmdq_task*) ;
 int cmdq_task_remove_wfe (struct cmdq_task*) ;
 int cmdq_thread_is_in_wfe (struct cmdq_thread*) ;
 scalar_t__ cmdq_thread_reset (struct cmdq*,struct cmdq_thread*) ;
 int cmdq_thread_resume (struct cmdq_thread*) ;
 scalar_t__ cmdq_thread_suspend (struct cmdq*,struct cmdq_thread*) ;
 int cmdq_thread_wait_end (struct cmdq_thread*,unsigned long) ;
 struct cmdq* dev_get_drvdata (int ) ;
 struct cmdq_task* kzalloc (int,int ) ;
 scalar_t__ list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 unsigned long readl (scalar_t__) ;
 int smp_mb () ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
{
 struct cmdq_pkt *pkt = (struct cmdq_pkt *)data;
 struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
 struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
 struct cmdq_task *task;
 unsigned long curr_pa, end_pa;


 WARN_ON(cmdq->suspended);

 task = kzalloc(sizeof(*task), GFP_ATOMIC);
 if (!task)
  return -ENOMEM;

 task->cmdq = cmdq;
 INIT_LIST_HEAD(&task->list_entry);
 task->pa_base = pkt->pa_base;
 task->thread = thread;
 task->pkt = pkt;

 if (list_empty(&thread->task_busy_list)) {
  WARN_ON(clk_enable(cmdq->clock) < 0);
  WARN_ON(cmdq_thread_reset(cmdq, thread) < 0);

  writel(task->pa_base, thread->base + CMDQ_THR_CURR_ADDR);
  writel(task->pa_base + pkt->cmd_buf_size,
         thread->base + CMDQ_THR_END_ADDR);
  writel(thread->priority, thread->base + CMDQ_THR_PRIORITY);
  writel(CMDQ_THR_IRQ_EN, thread->base + CMDQ_THR_IRQ_ENABLE);
  writel(CMDQ_THR_ENABLED, thread->base + CMDQ_THR_ENABLE_TASK);
 } else {
  WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
  curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR);
  end_pa = readl(thread->base + CMDQ_THR_END_ADDR);





  if (thread->atomic_exec) {

   if (!cmdq_thread_is_in_wfe(thread)) {
    cmdq_thread_resume(thread);
    cmdq_thread_wait_end(thread, end_pa);
    WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);

    writel(task->pa_base,
           thread->base + CMDQ_THR_CURR_ADDR);
   } else {
    cmdq_task_insert_into_thread(task);
    cmdq_task_remove_wfe(task);
    smp_mb();
   }
  } else {

   if (curr_pa == end_pa - CMDQ_INST_SIZE ||
       curr_pa == end_pa) {

    writel(task->pa_base,
           thread->base + CMDQ_THR_CURR_ADDR);
   } else {
    cmdq_task_insert_into_thread(task);
    smp_mb();
   }
  }
  writel(task->pa_base + pkt->cmd_buf_size,
         thread->base + CMDQ_THR_END_ADDR);
  cmdq_thread_resume(thread);
 }
 list_move_tail(&task->list_entry, &thread->task_busy_list);

 return 0;
}
