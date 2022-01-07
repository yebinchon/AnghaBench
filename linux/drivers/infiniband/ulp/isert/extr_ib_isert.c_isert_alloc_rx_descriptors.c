
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct isert_device {TYPE_1__* pd; struct ib_device* ib_device; } ;
struct isert_conn {struct iser_rx_desc* rx_descs; struct isert_device* device; } ;
struct TYPE_4__ {int done; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct iser_rx_desc {int dma_addr; TYPE_2__ rx_cqe; struct ib_sge rx_sg; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int local_dma_lkey; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISERT_QP_MAX_RECV_DTOS ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_map_single (struct ib_device*,void*,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int ) ;
 int ib_dma_unmap_single (struct ib_device*,int ,int ,int ) ;
 int isert_err (char*,struct isert_conn*) ;
 int isert_recv_done ;
 struct iser_rx_desc* kcalloc (int,int,int ) ;
 int kfree (struct iser_rx_desc*) ;

__attribute__((used)) static int
isert_alloc_rx_descriptors(struct isert_conn *isert_conn)
{
 struct isert_device *device = isert_conn->device;
 struct ib_device *ib_dev = device->ib_device;
 struct iser_rx_desc *rx_desc;
 struct ib_sge *rx_sg;
 u64 dma_addr;
 int i, j;

 isert_conn->rx_descs = kcalloc(ISERT_QP_MAX_RECV_DTOS,
           sizeof(struct iser_rx_desc),
           GFP_KERNEL);
 if (!isert_conn->rx_descs)
  return -ENOMEM;

 rx_desc = isert_conn->rx_descs;

 for (i = 0; i < ISERT_QP_MAX_RECV_DTOS; i++, rx_desc++) {
  dma_addr = ib_dma_map_single(ib_dev, (void *)rx_desc,
     ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(ib_dev, dma_addr))
   goto dma_map_fail;

  rx_desc->dma_addr = dma_addr;

  rx_sg = &rx_desc->rx_sg;
  rx_sg->addr = rx_desc->dma_addr;
  rx_sg->length = ISER_RX_PAYLOAD_SIZE;
  rx_sg->lkey = device->pd->local_dma_lkey;
  rx_desc->rx_cqe.done = isert_recv_done;
 }

 return 0;

dma_map_fail:
 rx_desc = isert_conn->rx_descs;
 for (j = 0; j < i; j++, rx_desc++) {
  ib_dma_unmap_single(ib_dev, rx_desc->dma_addr,
        ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
 }
 kfree(isert_conn->rx_descs);
 isert_conn->rx_descs = ((void*)0);
 isert_err("conn %p failed to allocate rx descriptors\n", isert_conn);
 return -ENOMEM;
}
