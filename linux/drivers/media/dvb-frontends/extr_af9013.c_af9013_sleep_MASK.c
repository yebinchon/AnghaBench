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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,unsigned int,unsigned int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe)
{
	struct af9013_state *state = fe->demodulator_priv;
	struct i2c_client *client = state->client;
	int ret;
	unsigned int utmp;

	FUNC0(&client->dev, "\n");

	/* disable lock led */
	ret = FUNC2(state->regmap, 0xd730, 0x01, 0x00);
	if (ret)
		goto err;

	/* Enable reset */
	ret = FUNC2(state->regmap, 0xd417, 0x10, 0x10);
	if (ret)
		goto err;

	/* Start reset execution */
	ret = FUNC3(state->regmap, 0xaeff, 0x01);
	if (ret)
		goto err;

	/* Wait reset performs */
	ret = FUNC1(state->regmap, 0xd417, utmp,
				       (utmp >> 1) & 0x01, 5000, 1000000);
	if (ret)
		goto err;

	if (!((utmp >> 1) & 0x01)) {
		ret = -ETIMEDOUT;
		goto err;
	}

	/* ADC off */
	ret = FUNC2(state->regmap, 0xd73a, 0x08, 0x08);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed %d\n", ret);
	return ret;
}