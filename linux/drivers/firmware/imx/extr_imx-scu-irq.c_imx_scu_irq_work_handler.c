
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct work_struct {int dummy; } ;
struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_4__ {scalar_t__ group; int resource; } ;
struct TYPE_6__ {TYPE_2__ resp; TYPE_1__ req; } ;
struct imx_sc_msg_irq_get_status {TYPE_3__ data; struct imx_sc_rpc_msg hdr; } ;


 int IMX_SC_IRQ_FUNC_STATUS ;
 scalar_t__ IMX_SC_IRQ_NUM_GROUP ;
 int IMX_SC_RPC_SVC_IRQ ;
 int IMX_SC_RPC_VERSION ;
 int imx_sc_irq_ipc_handle ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_irq_get_status*,int) ;
 int imx_scu_irq_notifier_call_chain (int ,scalar_t__*) ;
 int mu_resource_id ;
 int pr_err (char*,scalar_t__,int) ;

__attribute__((used)) static void imx_scu_irq_work_handler(struct work_struct *work)
{
 struct imx_sc_msg_irq_get_status msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 u32 irq_status;
 int ret;
 u8 i;

 for (i = 0; i < IMX_SC_IRQ_NUM_GROUP; i++) {
  hdr->ver = IMX_SC_RPC_VERSION;
  hdr->svc = IMX_SC_RPC_SVC_IRQ;
  hdr->func = IMX_SC_IRQ_FUNC_STATUS;
  hdr->size = 2;

  msg.data.req.resource = mu_resource_id;
  msg.data.req.group = i;

  ret = imx_scu_call_rpc(imx_sc_irq_ipc_handle, &msg, 1);
  if (ret) {
   pr_err("get irq group %d status failed, ret %d\n",
          i, ret);
   return;
  }

  irq_status = msg.data.resp.status;
  if (!irq_status)
   continue;

  imx_scu_irq_notifier_call_chain(irq_status, &i);
 }
}
