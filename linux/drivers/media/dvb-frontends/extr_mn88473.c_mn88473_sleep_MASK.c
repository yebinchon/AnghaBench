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
struct mn88473_dev {int active; int /*<<< orphan*/ * regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct mn88473_dev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct i2c_client *client = fe->demodulator_priv;
	struct mn88473_dev *dev = FUNC1(client);
	int ret;

	FUNC0(&client->dev, "\n");

	dev->active = false;

	ret = FUNC2(dev->regmap[2], 0x05, 0x3e);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}