
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_hdr {int itt; int opcode; } ;
struct iser_rx_desc {int dma_addr; int data; struct iscsi_hdr iscsi_header; } ;
struct iser_conn {scalar_t__ min_posted_rx; scalar_t__ qp_max_recv_dtos; int iscsi_conn; } ;
struct ib_wc {scalar_t__ status; int byte_len; int wr_cqe; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct ib_conn {int post_recv_buf_count; TYPE_2__* device; } ;
struct TYPE_4__ {int ib_device; } ;
struct TYPE_3__ {struct ib_conn* qp_context; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ IB_WC_SUCCESS ;
 int ISCSI_ERR_CONN_FAILED ;
 int ISER_HEADERS_LEN ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int iscsi_conn_failure (int ,int ) ;
 int iscsi_iser_recv (int ,struct iscsi_hdr*,int ,int) ;
 scalar_t__ iser_check_remote_inv (struct iser_conn*,struct ib_wc*,struct iscsi_hdr*) ;
 int iser_dbg (char*,int ,int ,int) ;
 int iser_err (char*,int,int) ;
 int iser_err_comp (struct ib_wc*,char*) ;
 int iser_post_recvm (struct iser_conn*,int) ;
 struct iser_rx_desc* iser_rx (int ) ;
 int min (scalar_t__,scalar_t__) ;
 struct iser_conn* to_iser_conn (struct ib_conn*) ;
 scalar_t__ unlikely (int) ;

void iser_task_rsp(struct ib_cq *cq, struct ib_wc *wc)
{
 struct ib_conn *ib_conn = wc->qp->qp_context;
 struct iser_conn *iser_conn = to_iser_conn(ib_conn);
 struct iser_rx_desc *desc = iser_rx(wc->wr_cqe);
 struct iscsi_hdr *hdr;
 int length;
 int outstanding, count, err;

 if (unlikely(wc->status != IB_WC_SUCCESS)) {
  iser_err_comp(wc, "task_rsp");
  return;
 }

 ib_dma_sync_single_for_cpu(ib_conn->device->ib_device,
       desc->dma_addr, ISER_RX_PAYLOAD_SIZE,
       DMA_FROM_DEVICE);

 hdr = &desc->iscsi_header;
 length = wc->byte_len - ISER_HEADERS_LEN;

 iser_dbg("op 0x%x itt 0x%x dlen %d\n", hdr->opcode,
   hdr->itt, length);

 if (iser_check_remote_inv(iser_conn, wc, hdr)) {
  iscsi_conn_failure(iser_conn->iscsi_conn,
       ISCSI_ERR_CONN_FAILED);
  return;
 }

 iscsi_iser_recv(iser_conn->iscsi_conn, hdr, desc->data, length);

 ib_dma_sync_single_for_device(ib_conn->device->ib_device,
          desc->dma_addr, ISER_RX_PAYLOAD_SIZE,
          DMA_FROM_DEVICE);





 ib_conn->post_recv_buf_count--;

 outstanding = ib_conn->post_recv_buf_count;
 if (outstanding + iser_conn->min_posted_rx <= iser_conn->qp_max_recv_dtos) {
  count = min(iser_conn->qp_max_recv_dtos - outstanding,
       iser_conn->min_posted_rx);
  err = iser_post_recvm(iser_conn, count);
  if (err)
   iser_err("posting %d rx bufs err %d\n", count, err);
 }
}
