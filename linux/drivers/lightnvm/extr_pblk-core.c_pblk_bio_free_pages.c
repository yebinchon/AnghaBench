
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int page_bio_pool; } ;
struct page {int dummy; } ;
struct bio_vec {int bv_len; struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; } ;


 scalar_t__ PBLK_EXPOSED_PAGE_SIZE ;
 int mempool_free (int ,int *) ;

void pblk_bio_free_pages(struct pblk *pblk, struct bio *bio, int off,
    int nr_pages)
{
 struct bio_vec *bv;
 struct page *page;
 int i, e, nbv = 0;

 for (i = 0; i < bio->bi_vcnt; i++) {
  bv = &bio->bi_io_vec[i];
  page = bv->bv_page;
  for (e = 0; e < bv->bv_len; e += PBLK_EXPOSED_PAGE_SIZE, nbv++)
   if (nbv >= off)
    mempool_free(page++, &pblk->page_bio_pool);
 }
}
