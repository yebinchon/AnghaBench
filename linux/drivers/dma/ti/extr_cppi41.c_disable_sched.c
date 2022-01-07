
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppi41_dd {scalar_t__ sched_mem; } ;


 scalar_t__ DMA_SCHED_CTRL ;
 int cppi_writel (int ,scalar_t__) ;

__attribute__((used)) static void disable_sched(struct cppi41_dd *cdd)
{
 cppi_writel(0, cdd->sched_mem + DMA_SCHED_CTRL);
}
