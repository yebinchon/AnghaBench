
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ta_xgmi_cmd_get_topology_info_output {int num_nodes; TYPE_6__* nodes; } ;
struct TYPE_10__ {struct ta_xgmi_cmd_get_topology_info_output get_topology_info; } ;
struct ta_xgmi_cmd_get_topology_info_input {int num_nodes; TYPE_3__* nodes; } ;
struct TYPE_8__ {struct ta_xgmi_cmd_get_topology_info_input get_topology_info; } ;
struct ta_xgmi_shared_memory {TYPE_4__ xgmi_out_message; int cmd_id; TYPE_2__ xgmi_in_message; } ;
struct psp_xgmi_topology_info {int num_nodes; TYPE_5__* nodes; } ;
struct TYPE_7__ {scalar_t__ xgmi_shared_buf; } ;
struct psp_context {TYPE_1__ xgmi_context; } ;
struct TYPE_12__ {int sdma_engine; int is_sharing_enabled; int num_hops; int node_id; } ;
struct TYPE_11__ {int sdma_engine; int is_sharing_enabled; int num_hops; int node_id; } ;
struct TYPE_9__ {int sdma_engine; int is_sharing_enabled; int num_hops; int node_id; } ;


 int EINVAL ;
 int TA_COMMAND_XGMI__GET_GET_TOPOLOGY_INFO ;
 int TA_XGMI__MAX_CONNECTED_NODES ;
 int memset (struct ta_xgmi_shared_memory*,int ,int) ;
 int psp_xgmi_invoke (struct psp_context*,int ) ;

__attribute__((used)) static int psp_v11_0_xgmi_get_topology_info(struct psp_context *psp,
 int number_devices, struct psp_xgmi_topology_info *topology)
{
 struct ta_xgmi_shared_memory *xgmi_cmd;
 struct ta_xgmi_cmd_get_topology_info_input *topology_info_input;
 struct ta_xgmi_cmd_get_topology_info_output *topology_info_output;
 int i;
 int ret;

 if (!topology || topology->num_nodes > TA_XGMI__MAX_CONNECTED_NODES)
  return -EINVAL;

 xgmi_cmd = (struct ta_xgmi_shared_memory*)psp->xgmi_context.xgmi_shared_buf;
 memset(xgmi_cmd, 0, sizeof(struct ta_xgmi_shared_memory));


 topology_info_input = &xgmi_cmd->xgmi_in_message.get_topology_info;
 xgmi_cmd->cmd_id = TA_COMMAND_XGMI__GET_GET_TOPOLOGY_INFO;
 topology_info_input->num_nodes = number_devices;

 for (i = 0; i < topology_info_input->num_nodes; i++) {
  topology_info_input->nodes[i].node_id = topology->nodes[i].node_id;
  topology_info_input->nodes[i].num_hops = topology->nodes[i].num_hops;
  topology_info_input->nodes[i].is_sharing_enabled = topology->nodes[i].is_sharing_enabled;
  topology_info_input->nodes[i].sdma_engine = topology->nodes[i].sdma_engine;
 }


 ret = psp_xgmi_invoke(psp, TA_COMMAND_XGMI__GET_GET_TOPOLOGY_INFO);
 if (ret)
  return ret;


 topology_info_output = &xgmi_cmd->xgmi_out_message.get_topology_info;
 topology->num_nodes = xgmi_cmd->xgmi_out_message.get_topology_info.num_nodes;
 for (i = 0; i < topology->num_nodes; i++) {
  topology->nodes[i].node_id = topology_info_output->nodes[i].node_id;
  topology->nodes[i].num_hops = topology_info_output->nodes[i].num_hops;
  topology->nodes[i].is_sharing_enabled = topology_info_output->nodes[i].is_sharing_enabled;
  topology->nodes[i].sdma_engine = topology_info_output->nodes[i].sdma_engine;
 }

 return 0;
}
