
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eop; } ;
struct pdma_descr {TYPE_1__ ctrl; } ;
struct artpec6_crypto_req_common {struct artpec6_crypto_dma_descriptors* dma; } ;
struct artpec6_crypto_dma_descriptors {int out_cnt; struct pdma_descr* out; } ;


 int EINVAL ;
 int MODULE_NAME ;
 int PDMA_DESCR_COUNT ;
 int pr_err (char*,int ,char*) ;

__attribute__((used)) static int
artpec6_crypto_terminate_out_descrs(struct artpec6_crypto_req_common *common)
{
 struct artpec6_crypto_dma_descriptors *dma = common->dma;
 struct pdma_descr *d;

 if (!dma->out_cnt || dma->out_cnt > PDMA_DESCR_COUNT) {
  pr_err("%s: OUT descriptor list is %s\n",
   MODULE_NAME, dma->out_cnt ? "empty" : "full");
  return -EINVAL;

 }

 d = &dma->out[dma->out_cnt-1];
 d->ctrl.eop = 1;

 return 0;
}
