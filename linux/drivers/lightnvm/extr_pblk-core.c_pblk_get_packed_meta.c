
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pblk_sec_meta {int dummy; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; TYPE_2__* bio; void* meta_list; } ;
struct TYPE_4__ {int bi_vcnt; TYPE_1__* bi_io_vec; } ;
struct TYPE_3__ {int bv_page; } ;


 int memcpy (int ,void*,int) ;
 void* page_to_virt (int ) ;
 int pblk_get_meta (struct pblk*,void*,int) ;
 scalar_t__ pblk_is_oob_meta_supported (struct pblk*) ;

void pblk_get_packed_meta(struct pblk *pblk, struct nvm_rq *rqd)
{
 void *meta_list = rqd->meta_list;
 void *page;
 int i = 0;

 if (pblk_is_oob_meta_supported(pblk))
  return;

 page = page_to_virt(rqd->bio->bi_io_vec[rqd->bio->bi_vcnt - 1].bv_page);

 for (; i < rqd->nr_ppas; i++)
  memcpy(pblk_get_meta(pblk, meta_list, i),
   page + (i * sizeof(struct pblk_sec_meta)),
   sizeof(struct pblk_sec_meta));
}
