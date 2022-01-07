
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intr; } ;
struct pdma_descr {TYPE_1__ ctrl; } ;
struct artpec6_crypto_req_common {struct artpec6_crypto_dma_descriptors* dma; } ;
struct artpec6_crypto_dma_descriptors {int in_cnt; struct pdma_descr* in; } ;


 int EINVAL ;
 int MODULE_NAME ;
 int PDMA_DESCR_COUNT ;
 int pr_err (char*,int ,char*) ;

__attribute__((used)) static int
artpec6_crypto_terminate_in_descrs(struct artpec6_crypto_req_common *common)
{
 struct artpec6_crypto_dma_descriptors *dma = common->dma;
 struct pdma_descr *d;

 if (!dma->in_cnt || dma->in_cnt > PDMA_DESCR_COUNT) {
  pr_err("%s: IN descriptor list is %s\n",
   MODULE_NAME, dma->in_cnt ? "empty" : "full");
  return -EINVAL;
 }

 d = &dma->in[dma->in_cnt-1];
 d->ctrl.intr = 1;
 return 0;
}
