
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 scalar_t__ blk_mq_queue_stopped (struct request_queue*) ;
 int blk_mq_quiesce_queue (struct request_queue*) ;

void dm_stop_queue(struct request_queue *q)
{
 if (blk_mq_queue_stopped(q))
  return;

 blk_mq_quiesce_queue(q);
}
