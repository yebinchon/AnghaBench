
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct pblk {int page_bio_pool; TYPE_1__* dev; } ;
struct page {int dummy; } ;
struct bio {scalar_t__ bi_vcnt; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct request_queue* q; } ;


 int PBLK_EXPOSED_PAGE_SIZE ;
 int bio_add_pc_page (struct request_queue*,struct bio*,struct page*,int,int ) ;
 struct page* mempool_alloc (int *,int ) ;
 int mempool_free (struct page*,int *) ;
 int pblk_bio_free_pages (struct pblk*,struct bio*,scalar_t__,int) ;
 int pblk_err (struct pblk*,char*) ;

int pblk_bio_add_pages(struct pblk *pblk, struct bio *bio, gfp_t flags,
         int nr_pages)
{
 struct request_queue *q = pblk->dev->q;
 struct page *page;
 int i, ret;

 for (i = 0; i < nr_pages; i++) {
  page = mempool_alloc(&pblk->page_bio_pool, flags);

  ret = bio_add_pc_page(q, bio, page, PBLK_EXPOSED_PAGE_SIZE, 0);
  if (ret != PBLK_EXPOSED_PAGE_SIZE) {
   pblk_err(pblk, "could not add page to bio\n");
   mempool_free(page, &pblk->page_bio_pool);
   goto err;
  }
 }

 return 0;
err:
 pblk_bio_free_pages(pblk, bio, (bio->bi_vcnt - i), i);
 return -1;
}
