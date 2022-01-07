
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmdq_thread {scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;
struct cmdq {scalar_t__ base; TYPE_1__ mbox; } ;


 scalar_t__ CMDQ_THR_CURR_STATUS ;
 int CMDQ_THR_ENABLED ;
 scalar_t__ CMDQ_THR_ENABLE_TASK ;
 int CMDQ_THR_STATUS_SUSPENDED ;
 int CMDQ_THR_SUSPEND ;
 scalar_t__ CMDQ_THR_SUSPEND_TASK ;
 int EFAULT ;
 int dev_err (int ,char*,int) ;
 int readl (scalar_t__) ;
 scalar_t__ readl_poll_timeout_atomic (scalar_t__,int,int,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int cmdq_thread_suspend(struct cmdq *cmdq, struct cmdq_thread *thread)
{
 u32 status;

 writel(CMDQ_THR_SUSPEND, thread->base + CMDQ_THR_SUSPEND_TASK);


 if (!(readl(thread->base + CMDQ_THR_ENABLE_TASK) & CMDQ_THR_ENABLED))
  return 0;

 if (readl_poll_timeout_atomic(thread->base + CMDQ_THR_CURR_STATUS,
   status, status & CMDQ_THR_STATUS_SUSPENDED, 0, 10)) {
  dev_err(cmdq->mbox.dev, "suspend GCE thread 0x%x failed\n",
   (u32)(thread->base - cmdq->base));
  return -EFAULT;
 }

 return 0;
}
