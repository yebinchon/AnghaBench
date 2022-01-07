
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct imx_sc_rpc_msg {int size; void* func; void* svc; int ver; } ;
struct imx_sc_msg_resp_misc_get_ctrl {int val; } ;
struct imx_sc_msg_req_misc_get_ctrl {int resource; int ctrl; struct imx_sc_rpc_msg hdr; } ;
struct imx_sc_ipc {int dummy; } ;


 scalar_t__ IMX_SC_MISC_FUNC_GET_CONTROL ;
 scalar_t__ IMX_SC_RPC_SVC_MISC ;
 int IMX_SC_RPC_VERSION ;
 int imx_scu_call_rpc (struct imx_sc_ipc*,struct imx_sc_msg_req_misc_get_ctrl*,int) ;

int imx_sc_misc_get_control(struct imx_sc_ipc *ipc, u32 resource,
       u8 ctrl, u32 *val)
{
 struct imx_sc_msg_req_misc_get_ctrl msg;
 struct imx_sc_msg_resp_misc_get_ctrl *resp;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 int ret;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = (uint8_t)IMX_SC_RPC_SVC_MISC;
 hdr->func = (uint8_t)IMX_SC_MISC_FUNC_GET_CONTROL;
 hdr->size = 3;

 msg.ctrl = ctrl;
 msg.resource = resource;

 ret = imx_scu_call_rpc(ipc, &msg, 1);
 if (ret)
  return ret;

 resp = (struct imx_sc_msg_resp_misc_get_ctrl *)&msg;
 if (val != ((void*)0))
  *val = resp->val;

 return 0;
}
