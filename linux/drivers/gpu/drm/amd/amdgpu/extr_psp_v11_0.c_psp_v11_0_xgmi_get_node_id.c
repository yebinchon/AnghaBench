
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int node_id; } ;
struct TYPE_6__ {TYPE_2__ get_node_id; } ;
struct ta_xgmi_shared_memory {TYPE_3__ xgmi_out_message; int cmd_id; } ;
struct TYPE_4__ {scalar_t__ xgmi_shared_buf; } ;
struct psp_context {TYPE_1__ xgmi_context; } ;


 int TA_COMMAND_XGMI__GET_NODE_ID ;
 int memset (struct ta_xgmi_shared_memory*,int ,int) ;
 int psp_xgmi_invoke (struct psp_context*,int ) ;

__attribute__((used)) static int psp_v11_0_xgmi_get_node_id(struct psp_context *psp, uint64_t *node_id)
{
 struct ta_xgmi_shared_memory *xgmi_cmd;
 int ret;

 xgmi_cmd = (struct ta_xgmi_shared_memory*)psp->xgmi_context.xgmi_shared_buf;
 memset(xgmi_cmd, 0, sizeof(struct ta_xgmi_shared_memory));

 xgmi_cmd->cmd_id = TA_COMMAND_XGMI__GET_NODE_ID;


 ret = psp_xgmi_invoke(psp, xgmi_cmd->cmd_id);
 if (ret)
  return ret;

 *node_id = xgmi_cmd->xgmi_out_message.get_node_id.node_id;

 return 0;
}
