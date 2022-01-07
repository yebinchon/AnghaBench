
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_thread {scalar_t__ base; } ;


 int CMDQ_THR_RESUME ;
 scalar_t__ CMDQ_THR_SUSPEND_TASK ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void cmdq_thread_resume(struct cmdq_thread *thread)
{
 writel(CMDQ_THR_RESUME, thread->base + CMDQ_THR_SUSPEND_TASK);
}
