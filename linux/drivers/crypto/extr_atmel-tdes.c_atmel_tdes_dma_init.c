
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct crypto_platform_data {TYPE_2__* dma_slave; } ;
struct TYPE_6__ {int src_maxburst; int dst_maxburst; int device_fc; void* dst_addr_width; void* src_addr_width; scalar_t__ dst_addr; int direction; } ;
struct TYPE_10__ {void* chan; TYPE_1__ dma_conf; } ;
struct TYPE_8__ {int src_maxburst; int dst_maxburst; int device_fc; void* dst_addr_width; void* src_addr_width; scalar_t__ src_addr; int direction; } ;
struct TYPE_9__ {TYPE_3__ dma_conf; void* chan; } ;
struct atmel_tdes_dev {int dev; TYPE_5__ dma_lch_in; TYPE_4__ dma_lch_out; scalar_t__ phys_base; } ;
typedef int dma_cap_mask_t ;
struct TYPE_7__ {int txdata; int rxdata; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENODEV ;
 scalar_t__ TDES_IDATA1R ;
 scalar_t__ TDES_ODATA1R ;
 int atmel_tdes_filter ;
 int dev_warn (int ,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (void*) ;
 void* dma_request_slave_channel_compat (int ,int ,int *,int ,char*) ;

__attribute__((used)) static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd,
   struct crypto_platform_data *pdata)
{
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);


 dd->dma_lch_in.chan = dma_request_slave_channel_compat(mask,
   atmel_tdes_filter, &pdata->dma_slave->rxdata, dd->dev, "tx");
 if (!dd->dma_lch_in.chan)
  goto err_dma_in;

 dd->dma_lch_in.dma_conf.direction = DMA_MEM_TO_DEV;
 dd->dma_lch_in.dma_conf.dst_addr = dd->phys_base +
  TDES_IDATA1R;
 dd->dma_lch_in.dma_conf.src_maxburst = 1;
 dd->dma_lch_in.dma_conf.src_addr_width =
  DMA_SLAVE_BUSWIDTH_4_BYTES;
 dd->dma_lch_in.dma_conf.dst_maxburst = 1;
 dd->dma_lch_in.dma_conf.dst_addr_width =
  DMA_SLAVE_BUSWIDTH_4_BYTES;
 dd->dma_lch_in.dma_conf.device_fc = 0;

 dd->dma_lch_out.chan = dma_request_slave_channel_compat(mask,
   atmel_tdes_filter, &pdata->dma_slave->txdata, dd->dev, "rx");
 if (!dd->dma_lch_out.chan)
  goto err_dma_out;

 dd->dma_lch_out.dma_conf.direction = DMA_DEV_TO_MEM;
 dd->dma_lch_out.dma_conf.src_addr = dd->phys_base +
  TDES_ODATA1R;
 dd->dma_lch_out.dma_conf.src_maxburst = 1;
 dd->dma_lch_out.dma_conf.src_addr_width =
  DMA_SLAVE_BUSWIDTH_4_BYTES;
 dd->dma_lch_out.dma_conf.dst_maxburst = 1;
 dd->dma_lch_out.dma_conf.dst_addr_width =
  DMA_SLAVE_BUSWIDTH_4_BYTES;
 dd->dma_lch_out.dma_conf.device_fc = 0;

 return 0;

err_dma_out:
 dma_release_channel(dd->dma_lch_in.chan);
err_dma_in:
 dev_warn(dd->dev, "no DMA channel available\n");
 return -ENODEV;
}
