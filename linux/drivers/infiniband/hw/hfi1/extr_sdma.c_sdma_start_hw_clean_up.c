
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int sdma_hw_clean_up_task; } ;


 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void sdma_start_hw_clean_up(struct sdma_engine *sde)
{
 tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
}
