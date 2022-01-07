
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isert_device {TYPE_1__* pd; struct ib_device* ib_device; } ;
struct iser_tx_desc {int num_sge; struct ib_sge* tx_sg; int iscsi_header; } ;
struct isert_conn {int mutex; int state; struct isert_device* device; int login_rsp_dma; int * login_rsp_buf; struct iser_tx_desc login_tx_desc; } ;
struct iscsi_login {scalar_t__ login_complete; int login_failed; int * rsp_buf; int * rsp; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct ib_sge {int length; int lkey; int addr; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int local_dma_lkey; } ;


 int DMA_TO_DEVICE ;
 int ISERT_QP_MAX_RECV_DTOS ;
 int ISER_CONN_FULL_FEATURE ;
 int __isert_create_send_desc (struct isert_device*,struct iser_tx_desc*) ;
 int ib_dma_sync_single_for_cpu (struct ib_device*,int ,int,int ) ;
 int ib_dma_sync_single_for_device (struct ib_device*,int ,int,int ) ;
 int isert_alloc_rx_descriptors (struct isert_conn*) ;
 int isert_init_tx_hdrs (struct isert_conn*,struct iser_tx_desc*) ;
 int isert_login_post_recv (struct isert_conn*) ;
 int isert_login_post_send (struct isert_conn*,struct iser_tx_desc*) ;
 int isert_post_recvm (struct isert_conn*,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
isert_put_login_tx(struct iscsi_conn *conn, struct iscsi_login *login,
     u32 length)
{
 struct isert_conn *isert_conn = conn->context;
 struct isert_device *device = isert_conn->device;
 struct ib_device *ib_dev = device->ib_device;
 struct iser_tx_desc *tx_desc = &isert_conn->login_tx_desc;
 int ret;

 __isert_create_send_desc(device, tx_desc);

 memcpy(&tx_desc->iscsi_header, &login->rsp[0],
        sizeof(struct iscsi_hdr));

 isert_init_tx_hdrs(isert_conn, tx_desc);

 if (length > 0) {
  struct ib_sge *tx_dsg = &tx_desc->tx_sg[1];

  ib_dma_sync_single_for_cpu(ib_dev, isert_conn->login_rsp_dma,
        length, DMA_TO_DEVICE);

  memcpy(isert_conn->login_rsp_buf, login->rsp_buf, length);

  ib_dma_sync_single_for_device(ib_dev, isert_conn->login_rsp_dma,
           length, DMA_TO_DEVICE);

  tx_dsg->addr = isert_conn->login_rsp_dma;
  tx_dsg->length = length;
  tx_dsg->lkey = isert_conn->device->pd->local_dma_lkey;
  tx_desc->num_sge = 2;
 }
 if (!login->login_failed) {
  if (login->login_complete) {
   ret = isert_alloc_rx_descriptors(isert_conn);
   if (ret)
    return ret;

   ret = isert_post_recvm(isert_conn,
            ISERT_QP_MAX_RECV_DTOS);
   if (ret)
    return ret;


   mutex_lock(&isert_conn->mutex);
   isert_conn->state = ISER_CONN_FULL_FEATURE;
   mutex_unlock(&isert_conn->mutex);
   goto post_send;
  }

  ret = isert_login_post_recv(isert_conn);
  if (ret)
   return ret;
 }
post_send:
 ret = isert_login_post_send(isert_conn, tx_desc);
 if (ret)
  return ret;

 return 0;
}
