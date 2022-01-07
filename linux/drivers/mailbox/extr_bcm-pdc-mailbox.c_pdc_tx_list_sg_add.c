
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct pdc_state {scalar_t__ ntxpost; size_t txout; size_t tx_msg_start; scalar_t__* txin_numd; int ntxd; struct scatterlist** src_sg; int txnobuf; int txin; } ;
typedef int dma_addr_t ;


 scalar_t__ D64_CTRL1_EOF ;
 scalar_t__ D64_CTRL1_EOT ;
 scalar_t__ D64_CTRL1_IOC ;
 scalar_t__ D64_CTRL1_SOF ;
 int ENOSPC ;
 scalar_t__ NTXDACTIVE (int ,size_t,scalar_t__) ;
 scalar_t__ PDC_DMA_BUF_MAX ;
 int PDC_SUCCESS ;
 int pdc_build_txd (struct pdc_state*,int ,scalar_t__,scalar_t__) ;
 int sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;
 scalar_t__ sg_nents (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pdc_tx_list_sg_add(struct pdc_state *pdcs, struct scatterlist *sg)
{
 u32 flags = 0;
 u32 eot;
 u32 tx_avail;





 u32 num_desc;
 u32 desc_w = 0;
 u32 bufcnt;
 dma_addr_t databufptr;

 num_desc = (u32)sg_nents(sg);


 tx_avail = pdcs->ntxpost - NTXDACTIVE(pdcs->txin, pdcs->txout,
           pdcs->ntxpost);
 if (unlikely(num_desc > tx_avail)) {
  pdcs->txnobuf++;
  return -ENOSPC;
 }


 if (pdcs->tx_msg_start == pdcs->txout) {

  pdcs->txin_numd[pdcs->tx_msg_start] = 0;
  pdcs->src_sg[pdcs->txout] = sg;
  flags = D64_CTRL1_SOF;
 }

 while (sg) {
  if (unlikely(pdcs->txout == (pdcs->ntxd - 1)))
   eot = D64_CTRL1_EOT;
  else
   eot = 0;





  bufcnt = sg_dma_len(sg);
  databufptr = sg_dma_address(sg);
  while (bufcnt > PDC_DMA_BUF_MAX) {
   pdc_build_txd(pdcs, databufptr, PDC_DMA_BUF_MAX,
          flags | eot);
   desc_w++;
   bufcnt -= PDC_DMA_BUF_MAX;
   databufptr += PDC_DMA_BUF_MAX;
   if (unlikely(pdcs->txout == (pdcs->ntxd - 1)))
    eot = D64_CTRL1_EOT;
   else
    eot = 0;
  }
  sg = sg_next(sg);
  if (!sg)

   flags |= (D64_CTRL1_EOF | D64_CTRL1_IOC);
  pdc_build_txd(pdcs, databufptr, bufcnt, flags | eot);
  desc_w++;

  flags &= ~D64_CTRL1_SOF;
 }
 pdcs->txin_numd[pdcs->tx_msg_start] += desc_w;

 return PDC_SUCCESS;
}
