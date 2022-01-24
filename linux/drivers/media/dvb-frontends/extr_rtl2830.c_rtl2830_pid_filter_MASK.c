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
typedef  int u16 ;
struct rtl2830_dev {int filters; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct rtl2830_dev* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, u8 index, u16 pid, int onoff)
{
	struct i2c_client *client = fe->demodulator_priv;
	struct rtl2830_dev *dev = FUNC2(client);
	int ret;
	u8 buf[4];

	FUNC1(&client->dev, "index=%d pid=%04x onoff=%d\n",
		index, pid, onoff);

	/* skip invalid PIDs (0x2000) */
	if (pid > 0x1fff || index > 32)
		return 0;

	if (onoff)
		FUNC4(index, &dev->filters);
	else
		FUNC0(index, &dev->filters);

	/* enable / disable PIDs */
	buf[0] = (dev->filters >>  0) & 0xff;
	buf[1] = (dev->filters >>  8) & 0xff;
	buf[2] = (dev->filters >> 16) & 0xff;
	buf[3] = (dev->filters >> 24) & 0xff;
	ret = FUNC3(client, 0x062, buf, 4);
	if (ret)
		goto err;

	/* add PID */
	buf[0] = (pid >> 8) & 0xff;
	buf[1] = (pid >> 0) & 0xff;
	ret = FUNC3(client, 0x066 + 2 * index, buf, 2);
	if (ret)
		goto err;

	return 0;
err:
	FUNC1(&client->dev, "failed=%d\n", ret);
	return ret;
}