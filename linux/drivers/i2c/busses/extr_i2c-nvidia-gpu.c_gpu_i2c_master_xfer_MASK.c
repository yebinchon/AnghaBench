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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int flags; int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;
struct gpu_i2c_dev {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ I2C_MST_ADDR ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct gpu_i2c_dev*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct gpu_i2c_dev*) ; 
 int FUNC3 (struct gpu_i2c_dev*) ; 
 int FUNC4 (struct gpu_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_msg*) ; 
 struct gpu_i2c_dev* FUNC6 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *adap,
			       struct i2c_msg *msgs, int num)
{
	struct gpu_i2c_dev *i2cd = FUNC6(adap);
	int status, status2;
	bool send_stop = true;
	int i, j;

	/*
	 * The controller supports maximum 4 byte read due to known
	 * limitation of sending STOP after every read.
	 */
	FUNC7(i2cd->dev);
	for (i = 0; i < num; i++) {
		if (msgs[i].flags & I2C_M_RD) {
			/* program client address before starting read */
			FUNC10(msgs[i].addr, i2cd->regs + I2C_MST_ADDR);
			/* gpu_i2c_read has implicit start */
			status = FUNC1(i2cd, msgs[i].buf, msgs[i].len);
			if (status < 0)
				goto exit;
		} else {
			u8 addr = FUNC5(msgs + i);

			status = FUNC2(i2cd);
			if (status < 0) {
				if (i == 0)
					send_stop = false;
				goto exit;
			}

			status = FUNC4(i2cd, addr);
			if (status < 0)
				goto exit;

			for (j = 0; j < msgs[i].len; j++) {
				status = FUNC4(i2cd, msgs[i].buf[j]);
				if (status < 0)
					goto exit;
			}
		}
	}
	send_stop = false;
	status = FUNC3(i2cd);
	if (status < 0)
		goto exit;

	status = i;
exit:
	if (send_stop) {
		status2 = FUNC3(i2cd);
		if (status2 < 0)
			FUNC0(i2cd->dev, "i2c stop failed %d\n", status2);
	}
	FUNC8(i2cd->dev);
	FUNC9(i2cd->dev);
	return status;
}