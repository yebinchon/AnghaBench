
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct pblk_w_ctx {unsigned long flags; scalar_t__ lba; int ppa; } ;
struct pblk {TYPE_2__* disk; int rl; int req_writes; int inflight_writes; int user_wa; int rwb; TYPE_1__* dev; } ;
struct bio {int bi_opf; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {int part0; } ;
struct TYPE_3__ {struct request_queue* q; } ;


 int NVM_IO_DONE ;


 int PBLK_EXPOSED_PAGE_SIZE ;
 unsigned long PBLK_FLUSH_ENTRY ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int atomic64_add (int,int *) ;
 int atomic_long_add (int,int *) ;
 int bio_advance (struct bio*,int ) ;
 void* bio_data (struct bio*) ;
 int bio_endio (struct bio*) ;
 int bio_has_data (struct bio*) ;
 int bio_io_error (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int generic_end_io_acct (struct request_queue*,int ,int *,unsigned long) ;
 int generic_start_io_acct (struct request_queue*,int ,int ,int *) ;
 int io_schedule () ;
 unsigned long jiffies ;
 scalar_t__ pblk_get_lba (struct bio*) ;
 int pblk_get_secs (struct bio*) ;
 int pblk_pipeline_stop (struct pblk*) ;
 int pblk_ppa_set_empty (int *) ;
 int pblk_rb_may_write_user (int *,struct bio*,int,unsigned int*) ;
 unsigned int pblk_rb_wrap_pos (int *,unsigned int) ;
 int pblk_rb_write_entry_user (int *,void*,struct pblk_w_ctx,unsigned int) ;
 int pblk_rl_inserted (int *,int) ;
 int pblk_write_kick (struct pblk*) ;
 int pblk_write_should_kick (struct pblk*) ;
 scalar_t__ unlikely (int) ;

void pblk_write_to_cache(struct pblk *pblk, struct bio *bio,
    unsigned long flags)
{
 struct request_queue *q = pblk->dev->q;
 struct pblk_w_ctx w_ctx;
 sector_t lba = pblk_get_lba(bio);
 unsigned long start_time = jiffies;
 unsigned int bpos, pos;
 int nr_entries = pblk_get_secs(bio);
 int i, ret;

 generic_start_io_acct(q, REQ_OP_WRITE, bio_sectors(bio),
         &pblk->disk->part0);





retry:
 ret = pblk_rb_may_write_user(&pblk->rwb, bio, nr_entries, &bpos);
 switch (ret) {
 case 128:
  io_schedule();
  goto retry;
 case 129:
  pblk_pipeline_stop(pblk);
  bio_io_error(bio);
  goto out;
 }

 pblk_ppa_set_empty(&w_ctx.ppa);
 w_ctx.flags = flags;
 if (bio->bi_opf & REQ_PREFLUSH) {
  w_ctx.flags |= PBLK_FLUSH_ENTRY;
  pblk_write_kick(pblk);
 }

 if (unlikely(!bio_has_data(bio)))
  goto out;

 for (i = 0; i < nr_entries; i++) {
  void *data = bio_data(bio);

  w_ctx.lba = lba + i;

  pos = pblk_rb_wrap_pos(&pblk->rwb, bpos + i);
  pblk_rb_write_entry_user(&pblk->rwb, data, w_ctx, pos);

  bio_advance(bio, PBLK_EXPOSED_PAGE_SIZE);
 }

 atomic64_add(nr_entries, &pblk->user_wa);






 pblk_rl_inserted(&pblk->rl, nr_entries);

out:
 generic_end_io_acct(q, REQ_OP_WRITE, &pblk->disk->part0, start_time);
 pblk_write_should_kick(pblk);

 if (ret == NVM_IO_DONE)
  bio_endio(bio);
}
