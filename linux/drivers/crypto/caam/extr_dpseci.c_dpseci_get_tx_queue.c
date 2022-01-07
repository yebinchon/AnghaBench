
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpseci_tx_queue_attr {int priority; int fqid; } ;
struct dpseci_rsp_get_tx_queue {int priority; int fqid; } ;
struct dpseci_cmd_queue {int queue; } ;


 int DPSECI_CMDID_GET_TX_QUEUE ;
 int le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_get_tx_queue(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
   u8 queue, struct dpseci_tx_queue_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_cmd_queue *cmd_params;
 struct dpseci_rsp_get_tx_queue *rsp_params;
 int err;

 cmd.header = mc_encode_cmd_header(DPSECI_CMDID_GET_TX_QUEUE,
       cmd_flags,
       token);
 cmd_params = (struct dpseci_cmd_queue *)cmd.params;
 cmd_params->queue = queue;
 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 rsp_params = (struct dpseci_rsp_get_tx_queue *)cmd.params;
 attr->fqid = le32_to_cpu(rsp_params->fqid);
 attr->priority = rsp_params->priority;

 return 0;
}
