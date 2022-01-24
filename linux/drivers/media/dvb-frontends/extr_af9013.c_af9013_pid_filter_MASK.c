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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int /*<<< orphan*/  regmap; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u8 index, u16 pid,
			     int onoff)
{
	struct af9013_state *state = fe->demodulator_priv;
	struct i2c_client *client = state->client;
	int ret;
	u8 buf[2];

	FUNC0(&client->dev, "index %d, pid %04x, onoff %d\n",
		index, pid, onoff);

	if (pid > 0x1fff) {
		/* 0x2000 is kernel virtual pid for whole ts (all pids) */
		ret = 0;
		goto err;
	}

	buf[0] = (pid >> 0) & 0xff;
	buf[1] = (pid >> 8) & 0xff;
	ret = FUNC1(state->regmap, 0xd505, buf, 2);
	if (ret)
		goto err;
	ret = FUNC2(state->regmap, 0xd504, onoff << 5 | index << 0);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed %d\n", ret);
	return ret;
}