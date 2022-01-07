
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isert_conn {struct iser_rx_desc* rx_descs; TYPE_1__* device; } ;
struct iser_rx_desc {int dma_addr; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ib_device* ib_device; } ;


 int DMA_FROM_DEVICE ;
 int ISERT_QP_MAX_RECV_DTOS ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_unmap_single (struct ib_device*,int ,int ,int ) ;
 int kfree (struct iser_rx_desc*) ;

__attribute__((used)) static void
isert_free_rx_descriptors(struct isert_conn *isert_conn)
{
 struct ib_device *ib_dev = isert_conn->device->ib_device;
 struct iser_rx_desc *rx_desc;
 int i;

 if (!isert_conn->rx_descs)
  return;

 rx_desc = isert_conn->rx_descs;
 for (i = 0; i < ISERT_QP_MAX_RECV_DTOS; i++, rx_desc++) {
  ib_dma_unmap_single(ib_dev, rx_desc->dma_addr,
        ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
 }

 kfree(isert_conn->rx_descs);
 isert_conn->rx_descs = ((void*)0);
}
