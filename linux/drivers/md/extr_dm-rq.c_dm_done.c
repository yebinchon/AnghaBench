
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request {TYPE_3__* q; struct dm_rq_target_io* end_io_data; } ;
struct dm_rq_target_io {int md; int info; TYPE_4__* ti; } ;
typedef int (* dm_request_endio_fn ) (TYPE_4__*,struct request*,int ,int *) ;
typedef int blk_status_t ;
struct TYPE_8__ {TYPE_1__* type; } ;
struct TYPE_6__ {int max_write_zeroes_sectors; int max_write_same_sectors; int max_discard_sectors; } ;
struct TYPE_7__ {TYPE_2__ limits; } ;
struct TYPE_5__ {int (* rq_end_io ) (TYPE_4__*,struct request*,int ,int *) ;} ;


 int BLK_STS_TARGET ;
 int BUG () ;
 int DMWARN (char*,int) ;




 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ REQ_OP_WRITE_SAME ;
 scalar_t__ REQ_OP_WRITE_ZEROES ;
 int disable_discard (int ) ;
 int disable_write_same (int ) ;
 int disable_write_zeroes (int ) ;
 int dm_end_request (struct request*,int ) ;
 int dm_requeue_original_request (struct dm_rq_target_io*,int) ;
 scalar_t__ req_op (struct request*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dm_done(struct request *clone, blk_status_t error, bool mapped)
{
 int r = 130;
 struct dm_rq_target_io *tio = clone->end_io_data;
 dm_request_endio_fn rq_end_io = ((void*)0);

 if (tio->ti) {
  rq_end_io = tio->ti->type->rq_end_io;

  if (mapped && rq_end_io)
   r = rq_end_io(tio->ti, clone, error, &tio->info);
 }

 if (unlikely(error == BLK_STS_TARGET)) {
  if (req_op(clone) == REQ_OP_DISCARD &&
      !clone->q->limits.max_discard_sectors)
   disable_discard(tio->md);
  else if (req_op(clone) == REQ_OP_WRITE_SAME &&
    !clone->q->limits.max_write_same_sectors)
   disable_write_same(tio->md);
  else if (req_op(clone) == REQ_OP_WRITE_ZEROES &&
    !clone->q->limits.max_write_zeroes_sectors)
   disable_write_zeroes(tio->md);
 }

 switch (r) {
 case 130:

  dm_end_request(clone, error);
  break;
 case 129:

  return;
 case 128:

  dm_requeue_original_request(tio, 0);
  break;
 case 131:

  dm_requeue_original_request(tio, 1);
  break;
 default:
  DMWARN("unimplemented target endio return value: %d", r);
  BUG();
 }
}
