
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_g_ctx {unsigned long start_time; int lba; } ;
struct pblk {int inflight_io; int inflight_reads; int sync_reads; TYPE_1__* disk; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int q; } ;
struct nvm_rq {int nr_ppas; scalar_t__ error; struct bio* bio; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int part0; } ;


 int PBLK_READ ;
 int REQ_OP_READ ;
 int atomic_dec (int *) ;
 int atomic_long_add (int ,int *) ;
 int atomic_long_sub (int ,int *) ;
 int bio_put (struct bio*) ;
 int generic_end_io_acct (int ,int ,int *,unsigned long) ;
 struct pblk_g_ctx* nvm_rq_to_pdu (struct nvm_rq*) ;
 int pblk_free_rqd (struct pblk*,struct nvm_rq*,int ) ;
 int pblk_log_read_err (struct pblk*,struct nvm_rq*) ;
 int pblk_read_check_seq (struct pblk*,struct nvm_rq*,int ) ;
 int pblk_rq_to_line_put (struct pblk*,struct nvm_rq*) ;

__attribute__((used)) static void __pblk_end_io_read(struct pblk *pblk, struct nvm_rq *rqd,
          bool put_line)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct pblk_g_ctx *r_ctx = nvm_rq_to_pdu(rqd);
 struct bio *int_bio = rqd->bio;
 unsigned long start_time = r_ctx->start_time;

 generic_end_io_acct(dev->q, REQ_OP_READ, &pblk->disk->part0, start_time);

 if (rqd->error)
  pblk_log_read_err(pblk, rqd);

 pblk_read_check_seq(pblk, rqd, r_ctx->lba);
 bio_put(int_bio);

 if (put_line)
  pblk_rq_to_line_put(pblk, rqd);






 pblk_free_rqd(pblk, rqd, PBLK_READ);
 atomic_dec(&pblk->inflight_io);
}
