
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int rq_flags; struct request_queue* q; } ;
struct TYPE_2__ {int result; } ;


 int BLK_STS_OK ;
 int EIO ;
 int ENXIO ;
 int RQF_QUIET ;
 int blk_execute_rq (struct request_queue*,int *,struct request*,int) ;
 int blk_mq_end_request (struct request*,int ) ;
 int blk_queue_dying (struct request_queue*) ;
 TYPE_1__* scsi_req (struct request*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ide_pm_execute_rq(struct request *rq)
{
 struct request_queue *q = rq->q;

 if (unlikely(blk_queue_dying(q))) {
  rq->rq_flags |= RQF_QUIET;
  scsi_req(rq)->result = -ENXIO;
  blk_mq_end_request(rq, BLK_STS_OK);
  return -ENXIO;
 }
 blk_execute_rq(q, ((void*)0), rq, 1);

 return scsi_req(rq)->result ? -EIO : 0;
}
