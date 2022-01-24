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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxjscu_cmd {int command; int result_len; int /*<<< orphan*/ * result; int /*<<< orphan*/ * parameter; scalar_t__ parameter_len; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; } ;
struct drx_cfg_mpeg_output {int enable_mpeg_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEC_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  FEC_COMM_EXEC__A ; 
 int /*<<< orphan*/  IQM_CF_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  IQM_CF_COMM_EXEC__A ; 
 int /*<<< orphan*/  IQM_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  IQM_COMM_EXEC__A ; 
 int /*<<< orphan*/  IQM_FD_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  IQM_FD_COMM_EXEC__A ; 
 int /*<<< orphan*/  IQM_FS_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  IQM_FS_COMM_EXEC__A ; 
 int /*<<< orphan*/  IQM_RC_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  IQM_RC_COMM_EXEC__A ; 
 int /*<<< orphan*/  IQM_RT_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  IQM_RT_COMM_EXEC__A ; 
 int SCU_RAM_COMMAND_CMD_DEMOD_STOP ; 
 int SCU_RAM_COMMAND_STANDARD_VSB ; 
 int /*<<< orphan*/  VSB_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  VSB_COMM_EXEC__A ; 
 int FUNC0 (struct drx_demod_instance*,struct drx_cfg_mpeg_output*) ; 
 int FUNC1 (struct i2c_device_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct i2c_device_addr*,struct drxjscu_cmd*) ; 
 int FUNC4 (struct drx_demod_instance*,int) ; 

__attribute__((used)) static int FUNC5(struct drx_demod_instance *demod, bool primary)
{
	struct i2c_device_addr *dev_addr = demod->my_i2c_dev_addr;
	struct drxjscu_cmd cmd_scu = { /* command     */ 0,
		/* parameter_len */ 0,
		/* result_len    */ 0,
		/* *parameter   */ NULL,
		/* *result      */ NULL
	};
	struct drx_cfg_mpeg_output cfg_mpeg_output;
	int rc;
	u16 cmd_result = 0;

	/*
	   STOP demodulator
	   reset of FEC and VSB HW
	 */
	cmd_scu.command = SCU_RAM_COMMAND_STANDARD_VSB |
	    SCU_RAM_COMMAND_CMD_DEMOD_STOP;
	cmd_scu.parameter_len = 0;
	cmd_scu.result_len = 1;
	cmd_scu.parameter = NULL;
	cmd_scu.result = &cmd_result;
	rc = FUNC3(dev_addr, &cmd_scu);
	if (rc != 0) {
		FUNC2("error %d\n", rc);
		goto rw_error;
	}

	/* stop all comm_exec */
	rc = FUNC1(dev_addr, FEC_COMM_EXEC__A, FEC_COMM_EXEC_STOP, 0);
	if (rc != 0) {
		FUNC2("error %d\n", rc);
		goto rw_error;
	}
	rc = FUNC1(dev_addr, VSB_COMM_EXEC__A, VSB_COMM_EXEC_STOP, 0);
	if (rc != 0) {
		FUNC2("error %d\n", rc);
		goto rw_error;
	}
	if (primary) {
		rc = FUNC1(dev_addr, IQM_COMM_EXEC__A, IQM_COMM_EXEC_STOP, 0);
		if (rc != 0) {
			FUNC2("error %d\n", rc);
			goto rw_error;
		}
		rc = FUNC4(demod, false);
		if (rc != 0) {
			FUNC2("error %d\n", rc);
			goto rw_error;
		}
	} else {
		rc = FUNC1(dev_addr, IQM_FS_COMM_EXEC__A, IQM_FS_COMM_EXEC_STOP, 0);
		if (rc != 0) {
			FUNC2("error %d\n", rc);
			goto rw_error;
		}
		rc = FUNC1(dev_addr, IQM_FD_COMM_EXEC__A, IQM_FD_COMM_EXEC_STOP, 0);
		if (rc != 0) {
			FUNC2("error %d\n", rc);
			goto rw_error;
		}
		rc = FUNC1(dev_addr, IQM_RC_COMM_EXEC__A, IQM_RC_COMM_EXEC_STOP, 0);
		if (rc != 0) {
			FUNC2("error %d\n", rc);
			goto rw_error;
		}
		rc = FUNC1(dev_addr, IQM_RT_COMM_EXEC__A, IQM_RT_COMM_EXEC_STOP, 0);
		if (rc != 0) {
			FUNC2("error %d\n", rc);
			goto rw_error;
		}
		rc = FUNC1(dev_addr, IQM_CF_COMM_EXEC__A, IQM_CF_COMM_EXEC_STOP, 0);
		if (rc != 0) {
			FUNC2("error %d\n", rc);
			goto rw_error;
		}
	}

	cfg_mpeg_output.enable_mpeg_output = false;
	rc = FUNC0(demod, &cfg_mpeg_output);
	if (rc != 0) {
		FUNC2("error %d\n", rc);
		goto rw_error;
	}

	return 0;
rw_error:
	return rc;
}