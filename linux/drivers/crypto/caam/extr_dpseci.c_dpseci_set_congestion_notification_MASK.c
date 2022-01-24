#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  dest_type; int /*<<< orphan*/  priority; int /*<<< orphan*/  dest_id; } ;
struct dpseci_congestion_notification_cfg {int /*<<< orphan*/  threshold_exit; int /*<<< orphan*/  threshold_entry; int /*<<< orphan*/  message_ctx; int /*<<< orphan*/  message_iova; int /*<<< orphan*/  units; TYPE_1__ dest_cfg; int /*<<< orphan*/  notification_mode; } ;
struct dpseci_cmd_congestion_notification {void* threshold_exit; void* threshold_entry; void* message_ctx; void* message_iova; int /*<<< orphan*/  options; int /*<<< orphan*/  priority; int /*<<< orphan*/  notification_mode; void* dest_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGN_DEST_TYPE ; 
 int /*<<< orphan*/  CGN_UNITS ; 
 int /*<<< orphan*/  DPSECI_CMDID_SET_CONGESTION_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC6(struct fsl_mc_io *mc_io, u32 cmd_flags,
	u16 token, const struct dpseci_congestion_notification_cfg *cfg)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpseci_cmd_congestion_notification *cmd_params;

	cmd.header = FUNC4(
			DPSECI_CMDID_SET_CONGESTION_NOTIFICATION,
			cmd_flags,
			token);
	cmd_params = (struct dpseci_cmd_congestion_notification *)cmd.params;
	cmd_params->dest_id = FUNC1(cfg->dest_cfg.dest_id);
	cmd_params->notification_mode = FUNC0(cfg->notification_mode);
	cmd_params->priority = cfg->dest_cfg.priority;
	FUNC3(cmd_params->options, CGN_DEST_TYPE,
			 cfg->dest_cfg.dest_type);
	FUNC3(cmd_params->options, CGN_UNITS, cfg->units);
	cmd_params->message_iova = FUNC2(cfg->message_iova);
	cmd_params->message_ctx = FUNC2(cfg->message_ctx);
	cmd_params->threshold_entry = FUNC1(cfg->threshold_entry);
	cmd_params->threshold_exit = FUNC1(cfg->threshold_exit);

	return FUNC5(mc_io, &cmd);
}