
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct pblk* queuedata; } ;
struct pblk {int rl; } ;
struct bio {int bi_opf; } ;
typedef int blk_qc_t ;


 int BLK_QC_T_NONE ;
 int PBLK_IOTYPE_USER ;
 scalar_t__ READ ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int blk_queue_split (struct request_queue*,struct bio**) ;
 int pblk_discard (struct pblk*,struct bio*) ;
 scalar_t__ pblk_get_secs (struct bio*) ;
 scalar_t__ pblk_rl_max_io (int *) ;
 int pblk_submit_read (struct pblk*,struct bio*) ;
 int pblk_write_to_cache (struct pblk*,struct bio*,int ) ;

__attribute__((used)) static blk_qc_t pblk_make_rq(struct request_queue *q, struct bio *bio)
{
 struct pblk *pblk = q->queuedata;

 if (bio_op(bio) == REQ_OP_DISCARD) {
  pblk_discard(pblk, bio);
  if (!(bio->bi_opf & REQ_PREFLUSH)) {
   bio_endio(bio);
   return BLK_QC_T_NONE;
  }
 }




 if (bio_data_dir(bio) == READ) {
  blk_queue_split(q, &bio);
  pblk_submit_read(pblk, bio);
 } else {




  if (pblk_get_secs(bio) > pblk_rl_max_io(&pblk->rl))
   blk_queue_split(q, &bio);

  pblk_write_to_cache(pblk, bio, PBLK_IOTYPE_USER);
 }

 return BLK_QC_T_NONE;
}
