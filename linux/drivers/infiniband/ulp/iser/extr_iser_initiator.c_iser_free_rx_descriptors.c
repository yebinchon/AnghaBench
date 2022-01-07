
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_rx_desc {int dma_addr; } ;
struct iser_device {int ib_device; TYPE_1__* reg_ops; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {int qp_max_recv_dtos; struct iser_rx_desc* rx_descs; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int (* free_reg_res ) (struct ib_conn*) ;} ;


 int DMA_FROM_DEVICE ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int iser_free_login_buf (struct iser_conn*) ;
 int kfree (struct iser_rx_desc*) ;
 int stub1 (struct ib_conn*) ;

void iser_free_rx_descriptors(struct iser_conn *iser_conn)
{
 int i;
 struct iser_rx_desc *rx_desc;
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;

 if (device->reg_ops->free_reg_res)
  device->reg_ops->free_reg_res(ib_conn);

 rx_desc = iser_conn->rx_descs;
 for (i = 0; i < iser_conn->qp_max_recv_dtos; i++, rx_desc++)
  ib_dma_unmap_single(device->ib_device, rx_desc->dma_addr,
        ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
 kfree(iser_conn->rx_descs);

 iser_conn->rx_descs = ((void*)0);

 iser_free_login_buf(iser_conn);
}
