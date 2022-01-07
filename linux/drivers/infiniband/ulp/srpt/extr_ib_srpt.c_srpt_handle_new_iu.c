
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct srpt_send_ioctx {int recv_ioctx; } ;
struct TYPE_4__ {int offset; struct srp_cmd* buf; int dma; } ;
struct srpt_recv_ioctx {int wait_list; TYPE_1__ ioctx; } ;
struct srpt_rdma_ch {scalar_t__ state; int processing_wait_list; int cmd_wait_list; TYPE_2__* sport; } ;
struct srp_cmd {int opcode; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {TYPE_3__* sdev; } ;


 int BUG_ON (int) ;
 scalar_t__ CH_CONNECTING ;
 int DMA_FROM_DEVICE ;






 int WARN_ON_ONCE (int) ;
 int ib_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int srp_max_req_size ;
 struct srpt_send_ioctx* srpt_get_send_ioctx (struct srpt_rdma_ch*) ;
 int srpt_handle_cmd (struct srpt_rdma_ch*,struct srpt_recv_ioctx*,struct srpt_send_ioctx*) ;
 int srpt_handle_tsk_mgmt (struct srpt_rdma_ch*,struct srpt_recv_ioctx*,struct srpt_send_ioctx*) ;
 int srpt_post_recv (TYPE_3__*,struct srpt_rdma_ch*,struct srpt_recv_ioctx*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
srpt_handle_new_iu(struct srpt_rdma_ch *ch, struct srpt_recv_ioctx *recv_ioctx)
{
 struct srpt_send_ioctx *send_ioctx = ((void*)0);
 struct srp_cmd *srp_cmd;
 bool res = 0;
 u8 opcode;

 BUG_ON(!ch);
 BUG_ON(!recv_ioctx);

 if (unlikely(ch->state == CH_CONNECTING))
  goto push;

 ib_dma_sync_single_for_cpu(ch->sport->sdev->device,
       recv_ioctx->ioctx.dma,
       recv_ioctx->ioctx.offset + srp_max_req_size,
       DMA_FROM_DEVICE);

 srp_cmd = recv_ioctx->ioctx.buf + recv_ioctx->ioctx.offset;
 opcode = srp_cmd->opcode;
 if (opcode == 132 || opcode == 128) {
  send_ioctx = srpt_get_send_ioctx(ch);
  if (unlikely(!send_ioctx))
   goto push;
 }

 if (!list_empty(&recv_ioctx->wait_list)) {
  WARN_ON_ONCE(!ch->processing_wait_list);
  list_del_init(&recv_ioctx->wait_list);
 }

 switch (opcode) {
 case 132:
  srpt_handle_cmd(ch, recv_ioctx, send_ioctx);
  break;
 case 128:
  srpt_handle_tsk_mgmt(ch, recv_ioctx, send_ioctx);
  break;
 case 130:
  pr_err("Not yet implemented: SRP_I_LOGOUT\n");
  break;
 case 131:
  pr_debug("received SRP_CRED_RSP\n");
  break;
 case 133:
  pr_debug("received SRP_AER_RSP\n");
  break;
 case 129:
  pr_err("Received SRP_RSP\n");
  break;
 default:
  pr_err("received IU with unknown opcode 0x%x\n", opcode);
  break;
 }

 if (!send_ioctx || !send_ioctx->recv_ioctx)
  srpt_post_recv(ch->sport->sdev, ch, recv_ioctx);
 res = 1;

out:
 return res;

push:
 if (list_empty(&recv_ioctx->wait_list)) {
  WARN_ON_ONCE(ch->processing_wait_list);
  list_add_tail(&recv_ioctx->wait_list, &ch->cmd_wait_list);
 }
 goto out;
}
