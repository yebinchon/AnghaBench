
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpseci_rsp_get_attributes {int options; int num_rx_queues; int num_tx_queues; int id; } ;
struct dpseci_attr {void* options; int num_rx_queues; int num_tx_queues; void* id; } ;


 int DPSECI_CMDID_GET_ATTR ;
 void* le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_get_attributes(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
     struct dpseci_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_rsp_get_attributes *rsp_params;
 int err;

 cmd.header = mc_encode_cmd_header(DPSECI_CMDID_GET_ATTR,
       cmd_flags,
       token);
 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 rsp_params = (struct dpseci_rsp_get_attributes *)cmd.params;
 attr->id = le32_to_cpu(rsp_params->id);
 attr->num_tx_queues = rsp_params->num_tx_queues;
 attr->num_rx_queues = rsp_params->num_rx_queues;
 attr->options = le32_to_cpu(rsp_params->options);

 return 0;
}
