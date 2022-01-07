
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crypto_platform_data {TYPE_1__* dma_slave; } ;
struct TYPE_5__ {int src_maxburst; int dst_maxburst; int device_fc; void* dst_addr_width; void* src_addr_width; scalar_t__ dst_addr; int direction; } ;
struct TYPE_6__ {TYPE_2__ dma_conf; int chan; } ;
struct atmel_sha_dev {TYPE_3__ dma_lch_in; scalar_t__ phys_base; int dev; } ;
typedef int dma_cap_mask_t ;
struct TYPE_4__ {int rxdata; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENODEV ;
 scalar_t__ SHA_REG_DIN (int ) ;
 int atmel_sha_filter ;
 int dev_warn (int ,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_request_slave_channel_compat (int ,int ,int *,int ,char*) ;

__attribute__((used)) static int atmel_sha_dma_init(struct atmel_sha_dev *dd,
    struct crypto_platform_data *pdata)
{
 dma_cap_mask_t mask_in;


 dma_cap_zero(mask_in);
 dma_cap_set(DMA_SLAVE, mask_in);

 dd->dma_lch_in.chan = dma_request_slave_channel_compat(mask_in,
   atmel_sha_filter, &pdata->dma_slave->rxdata, dd->dev, "tx");
 if (!dd->dma_lch_in.chan) {
  dev_warn(dd->dev, "no DMA channel available\n");
  return -ENODEV;
 }

 dd->dma_lch_in.dma_conf.direction = DMA_MEM_TO_DEV;
 dd->dma_lch_in.dma_conf.dst_addr = dd->phys_base +
  SHA_REG_DIN(0);
 dd->dma_lch_in.dma_conf.src_maxburst = 1;
 dd->dma_lch_in.dma_conf.src_addr_width =
  DMA_SLAVE_BUSWIDTH_4_BYTES;
 dd->dma_lch_in.dma_conf.dst_maxburst = 1;
 dd->dma_lch_in.dma_conf.dst_addr_width =
  DMA_SLAVE_BUSWIDTH_4_BYTES;
 dd->dma_lch_in.dma_conf.device_fc = 0;

 return 0;
}
