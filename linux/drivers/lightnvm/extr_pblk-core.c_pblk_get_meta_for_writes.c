
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pblk {int dummy; } ;
struct nvm_rq {TYPE_2__* bio; void* meta_list; } ;
struct TYPE_4__ {int bi_vcnt; TYPE_1__* bi_io_vec; } ;
struct TYPE_3__ {int bv_page; } ;


 void* page_to_virt (int ) ;
 scalar_t__ pblk_is_oob_meta_supported (struct pblk*) ;

void *pblk_get_meta_for_writes(struct pblk *pblk, struct nvm_rq *rqd)
{
 void *buffer;

 if (pblk_is_oob_meta_supported(pblk)) {

  buffer = rqd->meta_list;
 } else {



  buffer = page_to_virt(
   rqd->bio->bi_io_vec[rqd->bio->bi_vcnt - 1].bv_page);
 }

 return buffer;
}
