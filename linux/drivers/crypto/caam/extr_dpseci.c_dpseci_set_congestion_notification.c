
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct TYPE_2__ {int dest_type; int priority; int dest_id; } ;
struct dpseci_congestion_notification_cfg {int threshold_exit; int threshold_entry; int message_ctx; int message_iova; int units; TYPE_1__ dest_cfg; int notification_mode; } ;
struct dpseci_cmd_congestion_notification {void* threshold_exit; void* threshold_entry; void* message_ctx; void* message_iova; int options; int priority; int notification_mode; void* dest_id; } ;


 int CGN_DEST_TYPE ;
 int CGN_UNITS ;
 int DPSECI_CMDID_SET_CONGESTION_NOTIFICATION ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int dpseci_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_set_congestion_notification(struct fsl_mc_io *mc_io, u32 cmd_flags,
 u16 token, const struct dpseci_congestion_notification_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_cmd_congestion_notification *cmd_params;

 cmd.header = mc_encode_cmd_header(
   DPSECI_CMDID_SET_CONGESTION_NOTIFICATION,
   cmd_flags,
   token);
 cmd_params = (struct dpseci_cmd_congestion_notification *)cmd.params;
 cmd_params->dest_id = cpu_to_le32(cfg->dest_cfg.dest_id);
 cmd_params->notification_mode = cpu_to_le16(cfg->notification_mode);
 cmd_params->priority = cfg->dest_cfg.priority;
 dpseci_set_field(cmd_params->options, CGN_DEST_TYPE,
    cfg->dest_cfg.dest_type);
 dpseci_set_field(cmd_params->options, CGN_UNITS, cfg->units);
 cmd_params->message_iova = cpu_to_le64(cfg->message_iova);
 cmd_params->message_ctx = cpu_to_le64(cfg->message_ctx);
 cmd_params->threshold_entry = cpu_to_le32(cfg->threshold_entry);
 cmd_params->threshold_exit = cpu_to_le32(cfg->threshold_exit);

 return mc_send_command(mc_io, &cmd);
}
