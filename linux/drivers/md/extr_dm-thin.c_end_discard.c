
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct discard_op {TYPE_1__* parent_bio; int plug; scalar_t__ bio; } ;
struct TYPE_3__ {scalar_t__ bi_status; } ;


 int REQ_OP_DISCARD ;
 int bio_chain (scalar_t__,TYPE_1__*) ;
 int bio_endio (TYPE_1__*) ;
 int bio_set_op_attrs (scalar_t__,int ,int ) ;
 int blk_finish_plug (int *) ;
 scalar_t__ errno_to_blk_status (int) ;
 int submit_bio (scalar_t__) ;

__attribute__((used)) static void end_discard(struct discard_op *op, int r)
{
 if (op->bio) {




  bio_chain(op->bio, op->parent_bio);
  bio_set_op_attrs(op->bio, REQ_OP_DISCARD, 0);
  submit_bio(op->bio);
 }

 blk_finish_plug(&op->plug);





 if (r && !op->parent_bio->bi_status)
  op->parent_bio->bi_status = errno_to_blk_status(r);
 bio_endio(op->parent_bio);
}
