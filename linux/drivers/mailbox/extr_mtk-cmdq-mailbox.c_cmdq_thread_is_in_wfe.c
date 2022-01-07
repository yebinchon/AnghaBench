
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_thread {scalar_t__ base; } ;


 int CMDQ_THR_IS_WAITING ;
 scalar_t__ CMDQ_THR_WAIT_TOKEN ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool cmdq_thread_is_in_wfe(struct cmdq_thread *thread)
{
 return readl(thread->base + CMDQ_THR_WAIT_TOKEN) & CMDQ_THR_IS_WAITING;
}
