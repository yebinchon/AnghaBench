
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int short_descr; unsigned int short_len; int eop; } ;
struct pdma_descr {TYPE_2__ shrt; TYPE_1__ ctrl; } ;
struct artpec6_crypto_req_common {struct artpec6_crypto_dma_descriptors* dma; } ;
struct artpec6_crypto_dma_descriptors {scalar_t__ out_cnt; struct pdma_descr* out; } ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__ PDMA_DESCR_COUNT ;
 scalar_t__ fault_inject_dma_descr () ;
 int memcpy (int ,void*,unsigned int) ;
 int memset (struct pdma_descr*,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int
artpec6_crypto_setup_out_descr_short(struct artpec6_crypto_req_common *common,
         void *dst, unsigned int len, bool eop)
{
 struct artpec6_crypto_dma_descriptors *dma = common->dma;
 struct pdma_descr *d;

 if (dma->out_cnt >= PDMA_DESCR_COUNT ||
     fault_inject_dma_descr()) {
  pr_err("No free OUT DMA descriptors available!\n");
  return -ENOSPC;
 } else if (len > 7 || len < 1) {
  return -EINVAL;
 }
 d = &dma->out[dma->out_cnt++];
 memset(d, 0, sizeof(*d));

 d->ctrl.short_descr = 1;
 d->ctrl.short_len = len;
 d->ctrl.eop = eop;
 memcpy(d->shrt.data, dst, len);
 return 0;
}
