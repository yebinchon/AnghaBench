
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sahara_sha_reqctx {int context_size; } ;
struct sahara_dev {TYPE_2__** hw_link; int context_phys_base; TYPE_1__** hw_desc; int * hw_phys_link; } ;
struct ahash_request {int dummy; } ;
struct TYPE_4__ {scalar_t__ next; int p; int len; } ;
struct TYPE_3__ {scalar_t__ p2; scalar_t__ len2; int p1; int len1; int hdr; } ;


 int sahara_sha_init_hdr (struct sahara_dev*,struct sahara_sha_reqctx*) ;

__attribute__((used)) static int sahara_sha_hw_context_descriptor_create(struct sahara_dev *dev,
      struct sahara_sha_reqctx *rctx,
      struct ahash_request *req,
      int index)
{
 dev->hw_desc[index]->hdr = sahara_sha_init_hdr(dev, rctx);

 dev->hw_desc[index]->len1 = rctx->context_size;
 dev->hw_desc[index]->p1 = dev->hw_phys_link[index];
 dev->hw_desc[index]->len2 = 0;
 dev->hw_desc[index]->p2 = 0;

 dev->hw_link[index]->len = rctx->context_size;
 dev->hw_link[index]->p = dev->context_phys_base;
 dev->hw_link[index]->next = 0;

 return 0;
}
