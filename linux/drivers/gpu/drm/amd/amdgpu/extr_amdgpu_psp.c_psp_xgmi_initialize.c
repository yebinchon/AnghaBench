
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ta_xgmi_shared_memory {int cmd_id; } ;
struct TYPE_6__ {scalar_t__ xgmi_shared_buf; int initialized; } ;
struct psp_context {TYPE_3__ xgmi_context; TYPE_2__* adev; } ;
struct TYPE_4__ {int ta_fw; } ;
struct TYPE_5__ {TYPE_1__ psp; } ;


 int ENOENT ;
 int TA_COMMAND_XGMI__INITIALIZE ;
 int memset (struct ta_xgmi_shared_memory*,int ,int) ;
 int psp_xgmi_init_shared_buf (struct psp_context*) ;
 int psp_xgmi_invoke (struct psp_context*,int ) ;
 int psp_xgmi_load (struct psp_context*) ;

__attribute__((used)) static int psp_xgmi_initialize(struct psp_context *psp)
{
 struct ta_xgmi_shared_memory *xgmi_cmd;
 int ret;

 if (!psp->adev->psp.ta_fw)
  return -ENOENT;

 if (!psp->xgmi_context.initialized) {
  ret = psp_xgmi_init_shared_buf(psp);
  if (ret)
   return ret;
 }


 ret = psp_xgmi_load(psp);
 if (ret)
  return ret;


 xgmi_cmd = (struct ta_xgmi_shared_memory *)(psp->xgmi_context.xgmi_shared_buf);
 memset(xgmi_cmd, 0, sizeof(struct ta_xgmi_shared_memory));
 xgmi_cmd->cmd_id = TA_COMMAND_XGMI__INITIALIZE;

 ret = psp_xgmi_invoke(psp, xgmi_cmd->cmd_id);

 return ret;
}
