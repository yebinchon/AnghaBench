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
struct dvb_frontend {struct af9033_dev* demodulator_priv; } ;
struct af9033_dev {int /*<<< orphan*/  regmap; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, int enable)
{
	struct af9033_dev *dev = fe->demodulator_priv;
	struct i2c_client *client = dev->client;
	int ret;

	FUNC0(&client->dev, "enable=%d\n", enable);

	ret = FUNC1(dev->regmap, 0x00fa04, 0x01, enable);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}