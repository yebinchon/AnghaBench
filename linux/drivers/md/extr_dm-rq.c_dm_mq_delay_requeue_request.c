
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;


 int __dm_mq_kick_requeue_list (int ,unsigned long) ;
 int blk_mq_requeue_request (struct request*,int) ;

__attribute__((used)) static void dm_mq_delay_requeue_request(struct request *rq, unsigned long msecs)
{
 blk_mq_requeue_request(rq, 0);
 __dm_mq_kick_requeue_list(rq->q, msecs);
}
