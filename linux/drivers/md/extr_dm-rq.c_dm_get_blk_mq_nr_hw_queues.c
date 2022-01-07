
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __dm_get_module_param (int *,int,int) ;
 int dm_mq_nr_hw_queues ;

__attribute__((used)) static unsigned dm_get_blk_mq_nr_hw_queues(void)
{
 return __dm_get_module_param(&dm_mq_nr_hw_queues, 1, 32);
}
