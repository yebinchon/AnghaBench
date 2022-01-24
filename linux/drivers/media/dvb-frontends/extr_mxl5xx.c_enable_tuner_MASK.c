#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct mxl {int /*<<< orphan*/  i2cdev; } ;
struct MXL_HYDRA_TUNER_CMD {int tuner_id; int enable; } ;
typedef  int /*<<< orphan*/  ctrl_tuner_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct MXL_HYDRA_TUNER_CMD*,int*) ; 
 int /*<<< orphan*/  HYDRA_TUNER_ENABLE_COMPLETE ; 
 int /*<<< orphan*/  MXL_CMD_WRITE ; 
 int MXL_HYDRA_CMD_HEADER_SIZE ; 
 int MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN ; 
 int /*<<< orphan*/  MXL_HYDRA_TUNER_ACTIVATE_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxl*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct mxl*,int,int*) ; 

__attribute__((used)) static int FUNC5(struct mxl *state, u32 tuner, u32 enable)
{
	int stat = 0;
	struct MXL_HYDRA_TUNER_CMD ctrl_tuner_cmd;
	u8 cmd_size = sizeof(ctrl_tuner_cmd);
	u8 cmd_buff[MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN];
	u32 val, count = 10;

	ctrl_tuner_cmd.tuner_id = tuner;
	ctrl_tuner_cmd.enable = enable;
	FUNC0(MXL_HYDRA_TUNER_ACTIVATE_CMD, MXL_CMD_WRITE,
			cmd_size, &ctrl_tuner_cmd, cmd_buff);
	stat = FUNC4(state, cmd_size + MXL_HYDRA_CMD_HEADER_SIZE,
			    &cmd_buff[0]);
	if (stat)
		return stat;
	FUNC3(state, HYDRA_TUNER_ENABLE_COMPLETE, &val);
	while (--count && ((val >> tuner) & 1) != enable) {
		FUNC2(20);
		FUNC3(state, HYDRA_TUNER_ENABLE_COMPLETE, &val);
	}
	if (!count)
		return -1;
	FUNC3(state, HYDRA_TUNER_ENABLE_COMPLETE, &val);
	FUNC1(state->i2cdev, "tuner %u ready = %u\n",
		tuner, (val >> tuner) & 1);

	return 0;
}