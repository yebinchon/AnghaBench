
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct TYPE_2__ {void* dest_type; int priority; void* dest_id; } ;
struct dpseci_rx_queue_attr {void* order_preservation_en; void* fqid; int user_ctx; TYPE_1__ dest_cfg; } ;
struct dpseci_cmd_queue {int order_preservation_en; int fqid; int user_ctx; int dest_type; int priority; int dest_id; int queue; } ;


 int DEST_TYPE ;
 int DPSECI_CMDID_GET_RX_QUEUE ;
 int ORDER_PRESERVATION ;
 void* dpseci_get_field (int ,int ) ;
 void* le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_get_rx_queue(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
   u8 queue, struct dpseci_rx_queue_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_cmd_queue *cmd_params;
 int err;

 cmd.header = mc_encode_cmd_header(DPSECI_CMDID_GET_RX_QUEUE,
       cmd_flags,
       token);
 cmd_params = (struct dpseci_cmd_queue *)cmd.params;
 cmd_params->queue = queue;
 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 attr->dest_cfg.dest_id = le32_to_cpu(cmd_params->dest_id);
 attr->dest_cfg.priority = cmd_params->priority;
 attr->dest_cfg.dest_type = dpseci_get_field(cmd_params->dest_type,
          DEST_TYPE);
 attr->user_ctx = le64_to_cpu(cmd_params->user_ctx);
 attr->fqid = le32_to_cpu(cmd_params->fqid);
 attr->order_preservation_en =
  dpseci_get_field(cmd_params->order_preservation_en,
     ORDER_PRESERVATION);

 return 0;
}
