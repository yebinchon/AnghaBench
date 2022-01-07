
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_c_ctx {scalar_t__ nr_padded; int nr_valid; } ;
struct pblk {int dummy; } ;
struct nvm_rq {struct bio* bio; } ;
struct bio {int dummy; } ;


 struct pblk_c_ctx* nvm_rq_to_pdu (struct nvm_rq*) ;
 int pblk_bio_free_pages (struct pblk*,struct bio*,int ,scalar_t__) ;

__attribute__((used)) static void pblk_free_write_rqd(struct pblk *pblk, struct nvm_rq *rqd)
{
 struct pblk_c_ctx *c_ctx = nvm_rq_to_pdu(rqd);
 struct bio *bio = rqd->bio;

 if (c_ctx->nr_padded)
  pblk_bio_free_pages(pblk, bio, c_ctx->nr_valid,
       c_ctx->nr_padded);
}
