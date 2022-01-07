
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct pblk_g_ctx {struct bio* private; int lba; int start_time; } ;
struct pblk {int inflight_io; TYPE_1__* disk; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {struct request_queue* q; } ;
struct nvm_rq {unsigned int nr_ppas; int error; int * ppa_list; int ppa_addr; struct bio* bio; int (* end_io ) (struct nvm_rq*) ;struct pblk* private; int opcode; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int part0; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 unsigned int NR_PHY_IN_LOG ;
 int NVM_OP_PREAD ;
 int PBLK_READ ;
 int REQ_OP_READ ;
 int __pblk_end_io_read (struct pblk*,struct nvm_rq*,int) ;
 int atomic_inc (int *) ;
 int bio_chain (struct bio*,struct bio*) ;
 struct bio* bio_clone_fast (struct bio*,int ,int *) ;
 int bio_io_error (struct bio*) ;
 int bio_put (struct bio*) ;
 int bio_sectors (struct bio*) ;
 struct bio* bio_split (struct bio*,unsigned int,int ,int *) ;
 int generic_make_request (struct bio*) ;
 int generic_start_io_acct (struct request_queue*,int ,int ,int *) ;
 int jiffies ;
 struct pblk_g_ctx* nvm_rq_to_pdu (struct nvm_rq*) ;
 struct nvm_rq* pblk_alloc_rqd (struct pblk*,int ) ;
 scalar_t__ pblk_alloc_rqd_meta (struct pblk*,struct nvm_rq*) ;
 int pblk_bio_set ;
 int pblk_end_io_read (struct nvm_rq*) ;
 int pblk_end_user_read (struct bio*,int ) ;
 int pblk_free_rqd (struct pblk*,struct nvm_rq*,int ) ;
 int pblk_get_lba (struct bio*) ;
 unsigned int pblk_get_secs (struct bio*) ;
 unsigned int pblk_read_ppalist_rq (struct pblk*,struct nvm_rq*,struct bio*,int ,int*) ;
 int pblk_read_rq (struct pblk*,struct nvm_rq*,struct bio*,int ,int*) ;
 scalar_t__ pblk_submit_io (struct pblk*,struct nvm_rq*,int *) ;

void pblk_submit_read(struct pblk *pblk, struct bio *bio)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct request_queue *q = dev->q;
 sector_t blba = pblk_get_lba(bio);
 unsigned int nr_secs = pblk_get_secs(bio);
 bool from_cache;
 struct pblk_g_ctx *r_ctx;
 struct nvm_rq *rqd;
 struct bio *int_bio, *split_bio;

 generic_start_io_acct(q, REQ_OP_READ, bio_sectors(bio),
         &pblk->disk->part0);

 rqd = pblk_alloc_rqd(pblk, PBLK_READ);

 rqd->opcode = NVM_OP_PREAD;
 rqd->nr_ppas = nr_secs;
 rqd->private = pblk;
 rqd->end_io = pblk_end_io_read;

 r_ctx = nvm_rq_to_pdu(rqd);
 r_ctx->start_time = jiffies;
 r_ctx->lba = blba;

 if (pblk_alloc_rqd_meta(pblk, rqd)) {
  bio_io_error(bio);
  pblk_free_rqd(pblk, rqd, PBLK_READ);
  return;
 }





 int_bio = bio_clone_fast(bio, GFP_KERNEL, &pblk_bio_set);

 if (nr_secs > 1)
  nr_secs = pblk_read_ppalist_rq(pblk, rqd, int_bio, blba,
      &from_cache);
 else
  pblk_read_rq(pblk, rqd, int_bio, blba, &from_cache);

split_retry:
 r_ctx->private = bio;
 rqd->bio = int_bio;

 if (from_cache && nr_secs == rqd->nr_ppas) {

  pblk_end_user_read(bio, 0);
  atomic_inc(&pblk->inflight_io);
  __pblk_end_io_read(pblk, rqd, 0);
 } else if (nr_secs != rqd->nr_ppas) {






  split_bio = bio_split(bio, nr_secs * NR_PHY_IN_LOG, GFP_KERNEL,
     &pblk_bio_set);
  bio_chain(split_bio, bio);
  generic_make_request(bio);







  bio = split_bio;
  rqd->nr_ppas = nr_secs;
  if (rqd->nr_ppas == 1)
   rqd->ppa_addr = rqd->ppa_list[0];




  bio_put(int_bio);
  int_bio = bio_clone_fast(bio, GFP_KERNEL, &pblk_bio_set);
  goto split_retry;
 } else if (pblk_submit_io(pblk, rqd, ((void*)0))) {

  rqd->error = -ENODEV;
  pblk_end_io_read(rqd);
 }
}
