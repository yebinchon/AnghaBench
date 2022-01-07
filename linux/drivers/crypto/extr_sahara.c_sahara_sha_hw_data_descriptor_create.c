
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sahara_sha_reqctx {scalar_t__ total; int sg_in_idx; unsigned int context_size; scalar_t__ first; } ;
struct sahara_dev {TYPE_2__** hw_link; TYPE_1__** hw_desc; int context_phys_base; scalar_t__* hw_phys_link; } ;
struct ahash_request {int dummy; } ;
struct TYPE_4__ {unsigned int len; scalar_t__ next; int p; } ;
struct TYPE_3__ {scalar_t__ len1; unsigned int len2; scalar_t__ p2; scalar_t__ p1; int hdr; } ;


 int SAHARA_HDR_MDHA_HASH ;
 int sahara_sha_hw_links_create (struct sahara_dev*,struct sahara_sha_reqctx*,int) ;
 int sahara_sha_init_hdr (struct sahara_dev*,struct sahara_sha_reqctx*) ;

__attribute__((used)) static int sahara_sha_hw_data_descriptor_create(struct sahara_dev *dev,
      struct sahara_sha_reqctx *rctx,
      struct ahash_request *req,
      int index)
{
 unsigned result_len;
 int i = index;

 if (rctx->first)

  dev->hw_desc[index]->hdr = sahara_sha_init_hdr(dev, rctx);
 else

  dev->hw_desc[index]->hdr = SAHARA_HDR_MDHA_HASH;

 dev->hw_desc[index]->len1 = rctx->total;
 if (dev->hw_desc[index]->len1 == 0) {

  dev->hw_desc[index]->p1 = 0;
  rctx->sg_in_idx = 0;
 } else {

  dev->hw_desc[index]->p1 = dev->hw_phys_link[index];
  i = sahara_sha_hw_links_create(dev, rctx, index);

  rctx->sg_in_idx = index;
  if (i < 0)
   return i;
 }

 dev->hw_desc[index]->p2 = dev->hw_phys_link[i];


 result_len = rctx->context_size;
 dev->hw_link[i]->p = dev->context_phys_base;

 dev->hw_link[i]->len = result_len;
 dev->hw_desc[index]->len2 = result_len;

 dev->hw_link[i]->next = 0;

 return 0;
}
