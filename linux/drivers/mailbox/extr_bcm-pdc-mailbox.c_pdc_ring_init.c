
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tx ;
struct TYPE_10__ {int dmabase; scalar_t__ vbase; } ;
struct pdc_state {int rx_status_len; int ntxpost; int nrxpost; int ring_pool; struct dma64dd* rxd_64; struct dma64dd* txd_64; TYPE_5__ rx_ring_alloc; TYPE_5__ tx_ring_alloc; TYPE_2__* regs; scalar_t__ txout; scalar_t__ tx_msg_start; scalar_t__ txin; scalar_t__ rxout; scalar_t__ last_rx_curr; scalar_t__ rx_msg_start; scalar_t__ rxin; TYPE_1__* pdev; } ;
struct pdc_ring_alloc {int dmabase; int * vbase; } ;
struct dma64dd {int ctrl1; } ;
struct TYPE_9__ {int control; int addrhigh; int addrlow; int ptr; } ;
struct TYPE_8__ {int control; int addrhigh; int addrlow; int ptr; } ;
struct dma64 {TYPE_4__ dmarcv; TYPE_3__ dmaxmt; } ;
struct device {int dummy; } ;
typedef int rx ;
struct TYPE_7__ {struct dma64* dmaregs; } ;
struct TYPE_6__ {struct device dev; } ;


 int D64_CTRL1_EOF ;
 int D64_CTRL1_EOT ;
 int D64_CTRL1_SOF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PDC_RING_ENTRIES ;
 int PDC_RX_CTL ;
 int PDC_RX_ENABLE ;
 int PDC_SUCCESS ;
 int PDC_TX_CTL ;
 int PDC_TX_ENABLE ;
 int dev_dbg (struct device*,char*,int *) ;
 int dma_pool_free (int ,int *,int ) ;
 void* dma_pool_zalloc (int ,int ,int *) ;
 int iowrite32 (int,int *) ;
 int lower_32_bits (int ) ;
 int memcpy (TYPE_5__*,struct pdc_ring_alloc*,int) ;
 scalar_t__ unlikely (int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int pdc_ring_init(struct pdc_state *pdcs, int ringset)
{
 int i;
 int err = PDC_SUCCESS;
 struct dma64 *dma_reg;
 struct device *dev = &pdcs->pdev->dev;
 struct pdc_ring_alloc tx;
 struct pdc_ring_alloc rx;


 tx.vbase = dma_pool_zalloc(pdcs->ring_pool, GFP_KERNEL, &tx.dmabase);
 if (unlikely(!tx.vbase)) {
  err = -ENOMEM;
  goto done;
 }


 rx.vbase = dma_pool_zalloc(pdcs->ring_pool, GFP_KERNEL, &rx.dmabase);
 if (unlikely(!rx.vbase)) {
  err = -ENOMEM;
  goto fail_dealloc;
 }

 dev_dbg(dev, " - base DMA addr of tx ring      %pad", &tx.dmabase);
 dev_dbg(dev, " - base virtual addr of tx ring  %p", tx.vbase);
 dev_dbg(dev, " - base DMA addr of rx ring      %pad", &rx.dmabase);
 dev_dbg(dev, " - base virtual addr of rx ring  %p", rx.vbase);

 memcpy(&pdcs->tx_ring_alloc, &tx, sizeof(tx));
 memcpy(&pdcs->rx_ring_alloc, &rx, sizeof(rx));

 pdcs->rxin = 0;
 pdcs->rx_msg_start = 0;
 pdcs->last_rx_curr = 0;
 pdcs->rxout = 0;
 pdcs->txin = 0;
 pdcs->tx_msg_start = 0;
 pdcs->txout = 0;


 pdcs->txd_64 = (struct dma64dd *)pdcs->tx_ring_alloc.vbase;
 pdcs->rxd_64 = (struct dma64dd *)pdcs->rx_ring_alloc.vbase;


 dma_reg = &pdcs->regs->dmaregs[ringset];


 iowrite32(PDC_TX_CTL, &dma_reg->dmaxmt.control);
 iowrite32((PDC_RX_CTL + (pdcs->rx_status_len << 1)),
    &dma_reg->dmarcv.control);
 iowrite32(0, &dma_reg->dmaxmt.ptr);
 iowrite32(0, &dma_reg->dmarcv.ptr);


 iowrite32(lower_32_bits(pdcs->tx_ring_alloc.dmabase),
    &dma_reg->dmaxmt.addrlow);
 iowrite32(upper_32_bits(pdcs->tx_ring_alloc.dmabase),
    &dma_reg->dmaxmt.addrhigh);

 iowrite32(lower_32_bits(pdcs->rx_ring_alloc.dmabase),
    &dma_reg->dmarcv.addrlow);
 iowrite32(upper_32_bits(pdcs->rx_ring_alloc.dmabase),
    &dma_reg->dmarcv.addrhigh);


 iowrite32(PDC_TX_CTL | PDC_TX_ENABLE, &dma_reg->dmaxmt.control);
 iowrite32((PDC_RX_CTL | PDC_RX_ENABLE | (pdcs->rx_status_len << 1)),
    &dma_reg->dmarcv.control);


 for (i = 0; i < PDC_RING_ENTRIES; i++) {

  if (i != pdcs->ntxpost) {
   iowrite32(D64_CTRL1_SOF | D64_CTRL1_EOF,
      &pdcs->txd_64[i].ctrl1);
  } else {

   iowrite32(D64_CTRL1_SOF | D64_CTRL1_EOF |
      D64_CTRL1_EOT, &pdcs->txd_64[i].ctrl1);
  }


  if (i != pdcs->nrxpost) {
   iowrite32(D64_CTRL1_SOF,
      &pdcs->rxd_64[i].ctrl1);
  } else {

   iowrite32(D64_CTRL1_SOF | D64_CTRL1_EOT,
      &pdcs->rxd_64[i].ctrl1);
  }
 }
 return PDC_SUCCESS;

fail_dealloc:
 dma_pool_free(pdcs->ring_pool, tx.vbase, tx.dmabase);
done:
 return err;
}
