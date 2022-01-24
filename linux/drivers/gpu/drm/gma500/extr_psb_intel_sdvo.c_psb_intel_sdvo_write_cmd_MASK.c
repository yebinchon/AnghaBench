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
typedef  scalar_t__ u8 ;
struct psb_intel_sdvo {int /*<<< orphan*/  i2c; int /*<<< orphan*/  slave_addr; } ;
struct i2c_msg {int len; scalar_t__* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ I2C_M_RD ; 
 int MAX_ARG_LEN ; 
 scalar_t__ SDVO_I2C_ARG_0 ; 
 scalar_t__ SDVO_I2C_CMD_STATUS ; 
 scalar_t__ SDVO_I2C_OPCODE ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct psb_intel_sdvo*,scalar_t__,void const*,int) ; 

__attribute__((used)) static bool FUNC4(struct psb_intel_sdvo *psb_intel_sdvo, u8 cmd,
				 const void *args, int args_len)
{
	u8 buf[MAX_ARG_LEN*2 + 2], status;
	struct i2c_msg msgs[MAX_ARG_LEN + 3];
	int i, ret;

	if (args_len > MAX_ARG_LEN) {
		FUNC1("Need to increase arg length\n");
		return false;
	}

	FUNC3(psb_intel_sdvo, cmd, args, args_len);

	for (i = 0; i < args_len; i++) {
		msgs[i].addr = psb_intel_sdvo->slave_addr;
		msgs[i].flags = 0;
		msgs[i].len = 2;
		msgs[i].buf = buf + 2 *i;
		buf[2*i + 0] = SDVO_I2C_ARG_0 - i;
		buf[2*i + 1] = ((u8*)args)[i];
	}
	msgs[i].addr = psb_intel_sdvo->slave_addr;
	msgs[i].flags = 0;
	msgs[i].len = 2;
	msgs[i].buf = buf + 2*i;
	buf[2*i + 0] = SDVO_I2C_OPCODE;
	buf[2*i + 1] = cmd;

	/* the following two are to read the response */
	status = SDVO_I2C_CMD_STATUS;
	msgs[i+1].addr = psb_intel_sdvo->slave_addr;
	msgs[i+1].flags = 0;
	msgs[i+1].len = 1;
	msgs[i+1].buf = &status;

	msgs[i+2].addr = psb_intel_sdvo->slave_addr;
	msgs[i+2].flags = I2C_M_RD;
	msgs[i+2].len = 1;
	msgs[i+2].buf = &status;

	ret = FUNC2(psb_intel_sdvo->i2c, msgs, i+3);
	if (ret < 0) {
		FUNC0("I2c transfer returned %d\n", ret);
		return false;
	}
	if (ret != i+3) {
		/* failure in I2C transfer */
		FUNC0("I2c transfer returned %d/%d\n", ret, i+3);
		return false;
	}

	return true;
}