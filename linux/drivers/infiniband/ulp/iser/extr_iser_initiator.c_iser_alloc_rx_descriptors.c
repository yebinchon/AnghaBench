
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ib_sge {int lkey; int length; int addr; } ;
struct TYPE_4__ {int done; } ;
struct iser_rx_desc {int dma_addr; struct ib_sge rx_sg; TYPE_1__ cqe; } ;
struct iser_device {TYPE_3__* reg_ops; int ib_device; TYPE_2__* pd; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {int qp_max_recv_dtos; int qp_max_recv_dtos_mask; int min_posted_rx; int num_rx_descs; struct iser_rx_desc* rx_descs; scalar_t__ rx_desc_head; int pages_per_mr; struct ib_conn ib_conn; } ;
struct iscsi_session {int cmds_max; int scsi_cmds_max; } ;
struct TYPE_6__ {int (* free_reg_res ) (struct ib_conn*) ;scalar_t__ (* alloc_reg_res ) (struct ib_conn*,int ,int ) ;} ;
struct TYPE_5__ {int local_dma_lkey; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ iser_alloc_login_buf (struct iser_conn*) ;
 int iser_err (char*) ;
 int iser_free_login_buf (struct iser_conn*) ;
 int iser_task_rsp ;
 int kfree (struct iser_rx_desc*) ;
 struct iser_rx_desc* kmalloc_array (int,int,int ) ;
 scalar_t__ stub1 (struct ib_conn*,int ,int ) ;
 int stub2 (struct ib_conn*) ;

int iser_alloc_rx_descriptors(struct iser_conn *iser_conn,
         struct iscsi_session *session)
{
 int i, j;
 u64 dma_addr;
 struct iser_rx_desc *rx_desc;
 struct ib_sge *rx_sg;
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;

 iser_conn->qp_max_recv_dtos = session->cmds_max;
 iser_conn->qp_max_recv_dtos_mask = session->cmds_max - 1;
 iser_conn->min_posted_rx = iser_conn->qp_max_recv_dtos >> 2;

 if (device->reg_ops->alloc_reg_res(ib_conn, session->scsi_cmds_max,
        iser_conn->pages_per_mr))
  goto create_rdma_reg_res_failed;

 if (iser_alloc_login_buf(iser_conn))
  goto alloc_login_buf_fail;

 iser_conn->num_rx_descs = session->cmds_max;
 iser_conn->rx_descs = kmalloc_array(iser_conn->num_rx_descs,
         sizeof(struct iser_rx_desc),
         GFP_KERNEL);
 if (!iser_conn->rx_descs)
  goto rx_desc_alloc_fail;

 rx_desc = iser_conn->rx_descs;

 for (i = 0; i < iser_conn->qp_max_recv_dtos; i++, rx_desc++) {
  dma_addr = ib_dma_map_single(device->ib_device, (void *)rx_desc,
     ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(device->ib_device, dma_addr))
   goto rx_desc_dma_map_failed;

  rx_desc->dma_addr = dma_addr;
  rx_desc->cqe.done = iser_task_rsp;
  rx_sg = &rx_desc->rx_sg;
  rx_sg->addr = rx_desc->dma_addr;
  rx_sg->length = ISER_RX_PAYLOAD_SIZE;
  rx_sg->lkey = device->pd->local_dma_lkey;
 }

 iser_conn->rx_desc_head = 0;
 return 0;

rx_desc_dma_map_failed:
 rx_desc = iser_conn->rx_descs;
 for (j = 0; j < i; j++, rx_desc++)
  ib_dma_unmap_single(device->ib_device, rx_desc->dma_addr,
        ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
 kfree(iser_conn->rx_descs);
 iser_conn->rx_descs = ((void*)0);
rx_desc_alloc_fail:
 iser_free_login_buf(iser_conn);
alloc_login_buf_fail:
 device->reg_ops->free_reg_res(ib_conn);
create_rdma_reg_res_failed:
 iser_err("failed allocating rx descriptors / data buffers\n");
 return -ENOMEM;
}
