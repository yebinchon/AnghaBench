
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_thread {scalar_t__ base; } ;
struct cmdq {int dummy; } ;


 int CMDQ_THR_DISABLED ;
 scalar_t__ CMDQ_THR_ENABLE_TASK ;
 int cmdq_thread_reset (struct cmdq*,struct cmdq_thread*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void cmdq_thread_disable(struct cmdq *cmdq, struct cmdq_thread *thread)
{
 cmdq_thread_reset(cmdq, thread);
 writel(CMDQ_THR_DISABLED, thread->base + CMDQ_THR_ENABLE_TASK);
}
