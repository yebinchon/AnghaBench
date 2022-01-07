
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int * queue_hw_ctx; } ;
struct request {int dummy; } ;
struct TYPE_3__ {struct request_queue* queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int blk_mq_delay_kick_requeue_list (struct request_queue*,int) ;
 int blk_mq_delay_run_hw_queue (int ,int) ;
 int blk_mq_requeue_request (struct request*,int) ;

void ide_requeue_and_plug(ide_drive_t *drive, struct request *rq)
{
 struct request_queue *q = drive->queue;


 if (rq) {
  blk_mq_requeue_request(rq, 0);
  blk_mq_delay_kick_requeue_list(q, 3);
 } else
  blk_mq_delay_run_hw_queue(q->queue_hw_ctx[0], 3);
}
