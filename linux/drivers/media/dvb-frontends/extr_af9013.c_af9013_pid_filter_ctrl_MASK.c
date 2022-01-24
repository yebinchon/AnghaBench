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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int /*<<< orphan*/  regmap; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, int onoff)
{
	struct af9013_state *state = fe->demodulator_priv;
	struct i2c_client *client = state->client;
	int ret;

	FUNC0(&client->dev, "onoff %d\n", onoff);

	ret = FUNC1(state->regmap, 0xd503, 0x01, onoff);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed %d\n", ret);
	return ret;
}