
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_w_ctx {int bios; int flags; } ;
struct pblk_rb {int inflight_flush_point; } ;
struct pblk_c_ctx {int nr_valid; int sentry; scalar_t__ nr_padded; } ;
struct pblk {struct pblk_rb rwb; int sync_writes; } ;
struct nvm_rq {int bio; int nr_ppas; } ;
struct bio {int dummy; } ;


 int PBLK_FLUSH_ENTRY ;
 int PBLK_WRITE ;
 int READ_ONCE (int ) ;
 int atomic_dec (int *) ;
 int atomic_long_add (int ,int *) ;
 int bio_endio (struct bio*) ;
 struct bio* bio_list_pop (int *) ;
 int bio_put (int ) ;
 int pblk_bio_free_pages (struct pblk*,int ,int,scalar_t__) ;
 int pblk_free_rqd (struct pblk*,struct nvm_rq*,int ) ;
 unsigned long pblk_rb_sync_advance (struct pblk_rb*,int) ;
 struct pblk_w_ctx* pblk_rb_w_ctx (struct pblk_rb*,int) ;
 int smp_store_release (int *,int) ;

__attribute__((used)) static unsigned long pblk_end_w_bio(struct pblk *pblk, struct nvm_rq *rqd,
        struct pblk_c_ctx *c_ctx)
{
 struct bio *original_bio;
 struct pblk_rb *rwb = &pblk->rwb;
 unsigned long ret;
 int i;

 for (i = 0; i < c_ctx->nr_valid; i++) {
  struct pblk_w_ctx *w_ctx;
  int pos = c_ctx->sentry + i;
  int flags;

  w_ctx = pblk_rb_w_ctx(rwb, pos);
  flags = READ_ONCE(w_ctx->flags);

  if (flags & PBLK_FLUSH_ENTRY) {
   flags &= ~PBLK_FLUSH_ENTRY;

   smp_store_release(&w_ctx->flags, flags);




  }

  while ((original_bio = bio_list_pop(&w_ctx->bios)))
   bio_endio(original_bio);
 }

 if (c_ctx->nr_padded)
  pblk_bio_free_pages(pblk, rqd->bio, c_ctx->nr_valid,
       c_ctx->nr_padded);





 ret = pblk_rb_sync_advance(&pblk->rwb, c_ctx->nr_valid);

 bio_put(rqd->bio);
 pblk_free_rqd(pblk, rqd, PBLK_WRITE);

 return ret;
}
