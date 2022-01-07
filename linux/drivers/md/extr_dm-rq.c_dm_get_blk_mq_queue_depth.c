
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLK_MQ_MAX_DEPTH ;
 int DM_MQ_QUEUE_DEPTH ;
 int __dm_get_module_param (int *,int ,int ) ;
 int dm_mq_queue_depth ;

__attribute__((used)) static unsigned dm_get_blk_mq_queue_depth(void)
{
 return __dm_get_module_param(&dm_mq_queue_depth,
         DM_MQ_QUEUE_DEPTH, BLK_MQ_MAX_DEPTH);
}
