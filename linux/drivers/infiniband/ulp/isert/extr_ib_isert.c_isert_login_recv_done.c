
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct isert_conn {int login_req_dma; int mutex; int login_req_comp; TYPE_3__* conn; scalar_t__ login_req_len; TYPE_2__* device; } ;
struct iscsi_login {int first_request; } ;
struct ib_wc {scalar_t__ status; scalar_t__ byte_len; TYPE_1__* qp; } ;
struct ib_device {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_6__ {struct iscsi_login* conn_login; } ;
struct TYPE_5__ {struct ib_device* ib_device; } ;
struct TYPE_4__ {struct isert_conn* qp_context; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ ISER_HEADERS_LEN ;
 int ISER_RX_PAYLOAD_SIZE ;
 int complete (int *) ;
 int ib_dma_sync_single_for_cpu (struct ib_device*,int ,int ,int ) ;
 int ib_dma_sync_single_for_device (struct ib_device*,int ,int ,int ) ;
 int isert_print_wc (struct ib_wc*,char*) ;
 int isert_rx_login_req (struct isert_conn*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
isert_login_recv_done(struct ib_cq *cq, struct ib_wc *wc)
{
 struct isert_conn *isert_conn = wc->qp->qp_context;
 struct ib_device *ib_dev = isert_conn->device->ib_device;

 if (unlikely(wc->status != IB_WC_SUCCESS)) {
  isert_print_wc(wc, "login recv");
  return;
 }

 ib_dma_sync_single_for_cpu(ib_dev, isert_conn->login_req_dma,
   ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);

 isert_conn->login_req_len = wc->byte_len - ISER_HEADERS_LEN;

 if (isert_conn->conn) {
  struct iscsi_login *login = isert_conn->conn->conn_login;

  if (login && !login->first_request)
   isert_rx_login_req(isert_conn);
 }

 mutex_lock(&isert_conn->mutex);
 complete(&isert_conn->login_req_comp);
 mutex_unlock(&isert_conn->mutex);

 ib_dma_sync_single_for_device(ib_dev, isert_conn->login_req_dma,
    ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
}
