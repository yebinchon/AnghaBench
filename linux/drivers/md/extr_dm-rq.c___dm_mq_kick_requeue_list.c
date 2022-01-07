
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_mq_delay_kick_requeue_list (struct request_queue*,unsigned long) ;

__attribute__((used)) static void __dm_mq_kick_requeue_list(struct request_queue *q, unsigned long msecs)
{
 blk_mq_delay_kick_requeue_list(q, msecs);
}
