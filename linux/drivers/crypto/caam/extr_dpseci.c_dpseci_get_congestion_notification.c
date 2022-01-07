
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct TYPE_2__ {void* dest_type; int priority; void* dest_id; } ;
struct dpseci_congestion_notification_cfg {void* threshold_exit; void* threshold_entry; void* message_ctx; void* message_iova; void* units; TYPE_1__ dest_cfg; int notification_mode; } ;
struct dpseci_cmd_congestion_notification {int threshold_exit; int threshold_entry; int message_ctx; int message_iova; int options; int priority; int notification_mode; int dest_id; } ;


 int CGN_DEST_TYPE ;
 int CGN_UNITS ;
 int DPSECI_CMDID_GET_CONGESTION_NOTIFICATION ;
 void* dpseci_get_field (int ,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_get_congestion_notification(struct fsl_mc_io *mc_io, u32 cmd_flags,
 u16 token, struct dpseci_congestion_notification_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_cmd_congestion_notification *rsp_params;
 int err;

 cmd.header = mc_encode_cmd_header(
   DPSECI_CMDID_GET_CONGESTION_NOTIFICATION,
   cmd_flags,
   token);
 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 rsp_params = (struct dpseci_cmd_congestion_notification *)cmd.params;
 cfg->dest_cfg.dest_id = le32_to_cpu(rsp_params->dest_id);
 cfg->notification_mode = le16_to_cpu(rsp_params->notification_mode);
 cfg->dest_cfg.priority = rsp_params->priority;
 cfg->dest_cfg.dest_type = dpseci_get_field(rsp_params->options,
         CGN_DEST_TYPE);
 cfg->units = dpseci_get_field(rsp_params->options, CGN_UNITS);
 cfg->message_iova = le64_to_cpu(rsp_params->message_iova);
 cfg->message_ctx = le64_to_cpu(rsp_params->message_ctx);
 cfg->threshold_entry = le32_to_cpu(rsp_params->threshold_entry);
 cfg->threshold_exit = le32_to_cpu(rsp_params->threshold_exit);

 return 0;
}
