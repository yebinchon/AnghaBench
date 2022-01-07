
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int dummy; } ;
struct ishtp_cl {scalar_t__ last_tx_path; scalar_t__ last_dma_acked; int send_msg_cnt_ipc; scalar_t__ tx_offs; } ;


 scalar_t__ CL_TX_PATH_DMA ;
 int ipc_tx_callback (struct ishtp_cl*) ;

__attribute__((used)) static void ishtp_cl_send_msg_ipc(struct ishtp_device *dev,
      struct ishtp_cl *cl)
{

 if (cl->last_tx_path == CL_TX_PATH_DMA && cl->last_dma_acked == 0)
  return;

 cl->tx_offs = 0;
 ipc_tx_callback(cl);
 ++cl->send_msg_cnt_ipc;
}
