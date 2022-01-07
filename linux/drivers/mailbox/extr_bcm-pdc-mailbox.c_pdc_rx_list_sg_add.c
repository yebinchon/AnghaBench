
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct pdc_state {scalar_t__ nrxpost; int rxout; int nrxd; size_t rx_msg_start; TYPE_1__* rx_ctx; int rxnobuf; int rxin; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int rxin_numd; } ;


 scalar_t__ D64_CTRL1_EOT ;
 int ENOSPC ;
 scalar_t__ NRXDACTIVE (int ,int,scalar_t__) ;
 scalar_t__ PDC_DMA_BUF_MAX ;
 int PDC_SUCCESS ;
 int pdc_build_rxd (struct pdc_state*,int ,scalar_t__,scalar_t__) ;
 int sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;
 scalar_t__ sg_nents (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pdc_rx_list_sg_add(struct pdc_state *pdcs, struct scatterlist *sg)
{
 u32 flags = 0;
 u32 rx_avail;





 u32 num_desc;
 u32 desc_w = 0;
 u32 bufcnt;
 dma_addr_t databufptr;

 num_desc = (u32)sg_nents(sg);

 rx_avail = pdcs->nrxpost - NRXDACTIVE(pdcs->rxin, pdcs->rxout,
           pdcs->nrxpost);
 if (unlikely(num_desc > rx_avail)) {
  pdcs->rxnobuf++;
  return -ENOSPC;
 }

 while (sg) {
  if (unlikely(pdcs->rxout == (pdcs->nrxd - 1)))
   flags = D64_CTRL1_EOT;
  else
   flags = 0;





  bufcnt = sg_dma_len(sg);
  databufptr = sg_dma_address(sg);
  while (bufcnt > PDC_DMA_BUF_MAX) {
   pdc_build_rxd(pdcs, databufptr, PDC_DMA_BUF_MAX, flags);
   desc_w++;
   bufcnt -= PDC_DMA_BUF_MAX;
   databufptr += PDC_DMA_BUF_MAX;
   if (unlikely(pdcs->rxout == (pdcs->nrxd - 1)))
    flags = D64_CTRL1_EOT;
   else
    flags = 0;
  }
  pdc_build_rxd(pdcs, databufptr, bufcnt, flags);
  desc_w++;
  sg = sg_next(sg);
 }
 pdcs->rx_ctx[pdcs->rx_msg_start].rxin_numd += desc_w;

 return PDC_SUCCESS;
}
