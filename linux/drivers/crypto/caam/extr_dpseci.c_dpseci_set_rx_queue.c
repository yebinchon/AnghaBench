
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
struct TYPE_2__ {int dest_type; int priority; int dest_id; } ;
struct dpseci_rx_queue_cfg {int order_preservation_en; int options; int user_ctx; TYPE_1__ dest_cfg; } ;
struct dpseci_cmd_queue {int order_preservation_en; void* options; int user_ctx; int dest_type; int queue; int priority; void* dest_id; } ;


 int DEST_TYPE ;
 int DPSECI_CMDID_SET_RX_QUEUE ;
 int ORDER_PRESERVATION ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int dpseci_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_set_rx_queue(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
   u8 queue, const struct dpseci_rx_queue_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_cmd_queue *cmd_params;

 cmd.header = mc_encode_cmd_header(DPSECI_CMDID_SET_RX_QUEUE,
       cmd_flags,
       token);
 cmd_params = (struct dpseci_cmd_queue *)cmd.params;
 cmd_params->dest_id = cpu_to_le32(cfg->dest_cfg.dest_id);
 cmd_params->priority = cfg->dest_cfg.priority;
 cmd_params->queue = queue;
 dpseci_set_field(cmd_params->dest_type, DEST_TYPE,
    cfg->dest_cfg.dest_type);
 cmd_params->user_ctx = cpu_to_le64(cfg->user_ctx);
 cmd_params->options = cpu_to_le32(cfg->options);
 dpseci_set_field(cmd_params->order_preservation_en, ORDER_PRESERVATION,
    cfg->order_preservation_en);

 return mc_send_command(mc_io, &cmd);
}
