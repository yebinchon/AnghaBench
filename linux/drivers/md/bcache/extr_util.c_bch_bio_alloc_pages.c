
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int __free_page (int ) ;
 int alloc_page (int ) ;

int bch_bio_alloc_pages(struct bio *bio, gfp_t gfp_mask)
{
 int i;
 struct bio_vec *bv;





 for (i = 0, bv = bio->bi_io_vec; i < bio->bi_vcnt; bv++, i++) {
  bv->bv_page = alloc_page(gfp_mask);
  if (!bv->bv_page) {
   while (--bv >= bio->bi_io_vec)
    __free_page(bv->bv_page);
   return -ENOMEM;
  }
 }

 return 0;
}
