
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct dpages {TYPE_1__ context_bi; scalar_t__ context_ptr; } ;
struct bio_vec {unsigned long bv_len; unsigned int bv_offset; struct page* bv_page; } ;
typedef scalar_t__ sector_t ;


 struct bio_vec bvec_iter_bvec (struct bio_vec*,TYPE_1__) ;

__attribute__((used)) static void bio_get_page(struct dpages *dp, struct page **p,
    unsigned long *len, unsigned *offset)
{
 struct bio_vec bvec = bvec_iter_bvec((struct bio_vec *)dp->context_ptr,
          dp->context_bi);

 *p = bvec.bv_page;
 *len = bvec.bv_len;
 *offset = bvec.bv_offset;


 dp->context_bi.bi_sector = (sector_t)bvec.bv_len;
}
