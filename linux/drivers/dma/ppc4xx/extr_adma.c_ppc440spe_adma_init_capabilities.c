
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_xor; int max_pq; int cap_mask; int device_prep_dma_interrupt; int device_prep_dma_xor_val; int device_prep_dma_pq_val; int device_prep_dma_pq; int device_prep_dma_xor; int device_prep_dma_memcpy; int device_issue_pending; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; } ;
struct ppc440spe_adma_device {int id; TYPE_1__ common; int dev; } ;
struct dma_cdb {int dummy; } ;


 int DMA0_FIFO_SIZE ;
 int DMA1_FIFO_SIZE ;
 int DMA_INTERRUPT ;
 int DMA_MEMCPY ;
 int DMA_PQ ;
 int DMA_PQ_VAL ;
 int DMA_XOR ;
 int DMA_XOR_VAL ;



 int XOR_MAX_OPS ;
 int dev_name (int ) ;
 int dma_cap_set (int ,int ) ;
 scalar_t__ dma_has_cap (int ,int ) ;
 int dma_set_maxpq (TYPE_1__*,int,int ) ;
 int ppc440spe_adma_alloc_chan_resources ;
 int ppc440spe_adma_free_chan_resources ;
 int ppc440spe_adma_issue_pending ;
 int ppc440spe_adma_prep_dma_interrupt ;
 int ppc440spe_adma_prep_dma_memcpy ;
 int ppc440spe_adma_prep_dma_pq ;
 int ppc440spe_adma_prep_dma_pqzero_sum ;
 int ppc440spe_adma_prep_dma_xor ;
 int ppc440spe_adma_prep_dma_xor_zero_sum ;
 int ppc440spe_adma_tx_status ;
 int pr_info (char*,int ,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void ppc440spe_adma_init_capabilities(struct ppc440spe_adma_device *adev)
{
 switch (adev->id) {
 case 130:
 case 129:
  dma_cap_set(DMA_MEMCPY, adev->common.cap_mask);
  dma_cap_set(DMA_INTERRUPT, adev->common.cap_mask);
  dma_cap_set(DMA_PQ, adev->common.cap_mask);
  dma_cap_set(DMA_PQ_VAL, adev->common.cap_mask);
  dma_cap_set(DMA_XOR_VAL, adev->common.cap_mask);
  break;
 case 128:
  dma_cap_set(DMA_XOR, adev->common.cap_mask);
  dma_cap_set(DMA_PQ, adev->common.cap_mask);
  dma_cap_set(DMA_INTERRUPT, adev->common.cap_mask);
  adev->common.cap_mask = adev->common.cap_mask;
  break;
 }


 adev->common.device_alloc_chan_resources =
    ppc440spe_adma_alloc_chan_resources;
 adev->common.device_free_chan_resources =
    ppc440spe_adma_free_chan_resources;
 adev->common.device_tx_status = ppc440spe_adma_tx_status;
 adev->common.device_issue_pending = ppc440spe_adma_issue_pending;


 if (dma_has_cap(DMA_MEMCPY, adev->common.cap_mask)) {
  adev->common.device_prep_dma_memcpy =
   ppc440spe_adma_prep_dma_memcpy;
 }
 if (dma_has_cap(DMA_XOR, adev->common.cap_mask)) {
  adev->common.max_xor = XOR_MAX_OPS;
  adev->common.device_prep_dma_xor =
   ppc440spe_adma_prep_dma_xor;
 }
 if (dma_has_cap(DMA_PQ, adev->common.cap_mask)) {
  switch (adev->id) {
  case 130:
   dma_set_maxpq(&adev->common,
    DMA0_FIFO_SIZE / sizeof(struct dma_cdb), 0);
   break;
  case 129:
   dma_set_maxpq(&adev->common,
    DMA1_FIFO_SIZE / sizeof(struct dma_cdb), 0);
   break;
  case 128:
   adev->common.max_pq = XOR_MAX_OPS * 3;
   break;
  }
  adev->common.device_prep_dma_pq =
   ppc440spe_adma_prep_dma_pq;
 }
 if (dma_has_cap(DMA_PQ_VAL, adev->common.cap_mask)) {
  switch (adev->id) {
  case 130:
   adev->common.max_pq = DMA0_FIFO_SIZE /
      sizeof(struct dma_cdb);
   break;
  case 129:
   adev->common.max_pq = DMA1_FIFO_SIZE /
      sizeof(struct dma_cdb);
   break;
  }
  adev->common.device_prep_dma_pq_val =
   ppc440spe_adma_prep_dma_pqzero_sum;
 }
 if (dma_has_cap(DMA_XOR_VAL, adev->common.cap_mask)) {
  switch (adev->id) {
  case 130:
   adev->common.max_xor = DMA0_FIFO_SIZE /
      sizeof(struct dma_cdb);
   break;
  case 129:
   adev->common.max_xor = DMA1_FIFO_SIZE /
      sizeof(struct dma_cdb);
   break;
  }
  adev->common.device_prep_dma_xor_val =
   ppc440spe_adma_prep_dma_xor_zero_sum;
 }
 if (dma_has_cap(DMA_INTERRUPT, adev->common.cap_mask)) {
  adev->common.device_prep_dma_interrupt =
   ppc440spe_adma_prep_dma_interrupt;
 }
 pr_info("%s: AMCC(R) PPC440SP(E) ADMA Engine: "
   "( %s%s%s%s%s%s)\n",
   dev_name(adev->dev),
   dma_has_cap(DMA_PQ, adev->common.cap_mask) ? "pq " : "",
   dma_has_cap(DMA_PQ_VAL, adev->common.cap_mask) ? "pq_val " : "",
   dma_has_cap(DMA_XOR, adev->common.cap_mask) ? "xor " : "",
   dma_has_cap(DMA_XOR_VAL, adev->common.cap_mask) ? "xor_val " : "",
   dma_has_cap(DMA_MEMCPY, adev->common.cap_mask) ? "memcpy " : "",
   dma_has_cap(DMA_INTERRUPT, adev->common.cap_mask) ? "intr " : "");
}
