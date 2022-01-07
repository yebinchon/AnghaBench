
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_mq_kick_requeue_list (struct request_queue*) ;
 int blk_mq_unquiesce_queue (struct request_queue*) ;

void dm_start_queue(struct request_queue *q)
{
 blk_mq_unquiesce_queue(q);
 blk_mq_kick_requeue_list(q);
}
