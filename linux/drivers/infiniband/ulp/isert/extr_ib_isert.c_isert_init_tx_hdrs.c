
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct isert_device {TYPE_1__* pd; struct ib_device* ib_device; } ;
struct isert_conn {struct isert_device* device; } ;
struct iser_tx_desc {TYPE_2__* tx_sg; int dma_addr; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int lkey; int length; int addr; } ;
struct TYPE_3__ {int local_dma_lkey; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int ISER_HEADERS_LEN ;
 int ib_dma_map_single (struct ib_device*,void*,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int ) ;
 int isert_dbg (char*,int ,int ,int ) ;
 int isert_err (char*) ;

__attribute__((used)) static int
isert_init_tx_hdrs(struct isert_conn *isert_conn,
     struct iser_tx_desc *tx_desc)
{
 struct isert_device *device = isert_conn->device;
 struct ib_device *ib_dev = device->ib_device;
 u64 dma_addr;

 dma_addr = ib_dma_map_single(ib_dev, (void *)tx_desc,
   ISER_HEADERS_LEN, DMA_TO_DEVICE);
 if (ib_dma_mapping_error(ib_dev, dma_addr)) {
  isert_err("ib_dma_mapping_error() failed\n");
  return -ENOMEM;
 }

 tx_desc->dma_addr = dma_addr;
 tx_desc->tx_sg[0].addr = tx_desc->dma_addr;
 tx_desc->tx_sg[0].length = ISER_HEADERS_LEN;
 tx_desc->tx_sg[0].lkey = device->pd->local_dma_lkey;

 isert_dbg("Setup tx_sg[0].addr: 0x%llx length: %u lkey: 0x%x\n",
    tx_desc->tx_sg[0].addr, tx_desc->tx_sg[0].length,
    tx_desc->tx_sg[0].lkey);

 return 0;
}
