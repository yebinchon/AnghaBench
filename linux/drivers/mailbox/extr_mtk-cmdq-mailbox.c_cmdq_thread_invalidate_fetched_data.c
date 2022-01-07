
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_thread {scalar_t__ base; } ;


 scalar_t__ CMDQ_THR_CURR_ADDR ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void cmdq_thread_invalidate_fetched_data(struct cmdq_thread *thread)
{
 writel(readl(thread->base + CMDQ_THR_CURR_ADDR),
        thread->base + CMDQ_THR_CURR_ADDR);
}
