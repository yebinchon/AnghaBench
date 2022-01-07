
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct imx_sc_msg_irq_enable {void* enable; int mask; void* group; int resource; struct imx_sc_rpc_msg hdr; } ;


 int EPROBE_DEFER ;
 int IMX_SC_IRQ_FUNC_ENABLE ;
 int IMX_SC_RPC_SVC_IRQ ;
 int IMX_SC_RPC_VERSION ;
 int imx_sc_irq_ipc_handle ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_irq_enable*,int) ;
 int mu_resource_id ;
 int pr_err (char*,void*,int ,int) ;

int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable)
{
 struct imx_sc_msg_irq_enable msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 int ret;

 if (!imx_sc_irq_ipc_handle)
  return -EPROBE_DEFER;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_IRQ;
 hdr->func = IMX_SC_IRQ_FUNC_ENABLE;
 hdr->size = 3;

 msg.resource = mu_resource_id;
 msg.group = group;
 msg.mask = mask;
 msg.enable = enable;

 ret = imx_scu_call_rpc(imx_sc_irq_ipc_handle, &msg, 1);
 if (ret)
  pr_err("enable irq failed, group %d, mask %d, ret %d\n",
   group, mask, ret);

 return ret;
}
