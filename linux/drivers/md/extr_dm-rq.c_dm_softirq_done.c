
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {int error; struct mapped_device* md; struct request* clone; } ;


 int RQF_FAILED ;
 int blk_mq_end_request (struct request*,int ) ;
 int dm_done (struct request*,int ,int) ;
 int rq_completed (struct mapped_device*) ;
 int rq_end_stats (struct mapped_device*,struct request*) ;
 struct dm_rq_target_io* tio_from_request (struct request*) ;

__attribute__((used)) static void dm_softirq_done(struct request *rq)
{
 bool mapped = 1;
 struct dm_rq_target_io *tio = tio_from_request(rq);
 struct request *clone = tio->clone;

 if (!clone) {
  struct mapped_device *md = tio->md;

  rq_end_stats(md, rq);
  blk_mq_end_request(rq, tio->error);
  rq_completed(md);
  return;
 }

 if (rq->rq_flags & RQF_FAILED)
  mapped = 0;

 dm_done(clone, tio->error, mapped);
}
