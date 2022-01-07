
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int done; } ;
struct iser_tx_desc {int num_sge; struct ib_sge* tx_sg; TYPE_1__ cqe; int type; } ;
struct iser_login_desc {int req_dma; int req; } ;
struct iser_device {TYPE_2__* pd; int ib_device; } ;
struct TYPE_7__ {struct iser_device* device; } ;
struct iser_conn {TYPE_3__ ib_conn; struct iser_login_desc login_desc; } ;
struct iscsi_task {TYPE_4__* hdr; int data_count; int data; struct iscsi_iser_task* dd_data; } ;
struct iscsi_iser_task {struct iser_tx_desc desc; } ;
struct iscsi_conn {struct iscsi_task* login_task; struct iser_conn* dd_data; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct TYPE_8__ {int opcode; int dlength; } ;
struct TYPE_6__ {int local_dma_lkey; } ;


 int DMA_TO_DEVICE ;
 int ISCSI_TX_CONTROL ;
 int ib_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int iser_create_send_desc (struct iser_conn*,struct iser_tx_desc*) ;
 int iser_ctrl_comp ;
 int iser_dbg (char*,int ,unsigned long) ;
 int iser_err (char*,...) ;
 int iser_post_recvl (struct iser_conn*) ;
 int iser_post_rx_bufs (struct iscsi_conn*,TYPE_4__*) ;
 int iser_post_send (TYPE_3__*,struct iser_tx_desc*,int) ;
 int memcpy (int ,int ,int ) ;
 unsigned long ntoh24 (int ) ;

int iser_send_control(struct iscsi_conn *conn,
        struct iscsi_task *task)
{
 struct iser_conn *iser_conn = conn->dd_data;
 struct iscsi_iser_task *iser_task = task->dd_data;
 struct iser_tx_desc *mdesc = &iser_task->desc;
 unsigned long data_seg_len;
 int err = 0;
 struct iser_device *device;


 mdesc->type = ISCSI_TX_CONTROL;
 mdesc->cqe.done = iser_ctrl_comp;
 iser_create_send_desc(iser_conn, mdesc);

 device = iser_conn->ib_conn.device;

 data_seg_len = ntoh24(task->hdr->dlength);

 if (data_seg_len > 0) {
  struct iser_login_desc *desc = &iser_conn->login_desc;
  struct ib_sge *tx_dsg = &mdesc->tx_sg[1];

  if (task != conn->login_task) {
   iser_err("data present on non login task!!!\n");
   goto send_control_error;
  }

  ib_dma_sync_single_for_cpu(device->ib_device, desc->req_dma,
        task->data_count, DMA_TO_DEVICE);

  memcpy(desc->req, task->data, task->data_count);

  ib_dma_sync_single_for_device(device->ib_device, desc->req_dma,
           task->data_count, DMA_TO_DEVICE);

  tx_dsg->addr = desc->req_dma;
  tx_dsg->length = task->data_count;
  tx_dsg->lkey = device->pd->local_dma_lkey;
  mdesc->num_sge = 2;
 }

 if (task == conn->login_task) {
  iser_dbg("op %x dsl %lx, posting login rx buffer\n",
    task->hdr->opcode, data_seg_len);
  err = iser_post_recvl(iser_conn);
  if (err)
   goto send_control_error;
  err = iser_post_rx_bufs(conn, task->hdr);
  if (err)
   goto send_control_error;
 }

 err = iser_post_send(&iser_conn->ib_conn, mdesc, 1);
 if (!err)
  return 0;

send_control_error:
 iser_err("conn %p failed err %d\n",conn, err);
 return err;
}
