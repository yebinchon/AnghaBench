
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct imx_sc_pm_domain {int rsrc; } ;
struct imx_sc_msg_req_set_resource_power_mode {int mode; int resource; struct imx_sc_rpc_msg hdr; } ;
struct generic_pm_domain {int dev; } ;


 int IMX_SC_PM_FUNC_SET_RESOURCE_POWER_MODE ;
 int IMX_SC_PM_PW_MODE_LP ;
 int IMX_SC_PM_PW_MODE_ON ;
 int IMX_SC_RPC_SVC_PM ;
 int IMX_SC_RPC_VERSION ;
 int dev_err (int *,char*,char*,int ,int) ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_req_set_resource_power_mode*,int) ;
 int pm_ipc_handle ;
 struct imx_sc_pm_domain* to_imx_sc_pd (struct generic_pm_domain*) ;

__attribute__((used)) static int imx_sc_pd_power(struct generic_pm_domain *domain, bool power_on)
{
 struct imx_sc_msg_req_set_resource_power_mode msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 struct imx_sc_pm_domain *pd;
 int ret;

 pd = to_imx_sc_pd(domain);

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_PM;
 hdr->func = IMX_SC_PM_FUNC_SET_RESOURCE_POWER_MODE;
 hdr->size = 2;

 msg.resource = pd->rsrc;
 msg.mode = power_on ? IMX_SC_PM_PW_MODE_ON : IMX_SC_PM_PW_MODE_LP;

 ret = imx_scu_call_rpc(pm_ipc_handle, &msg, 1);
 if (ret)
  dev_err(&domain->dev, "failed to power %s resource %d ret %d\n",
   power_on ? "up" : "off", pd->rsrc, ret);

 return ret;
}
