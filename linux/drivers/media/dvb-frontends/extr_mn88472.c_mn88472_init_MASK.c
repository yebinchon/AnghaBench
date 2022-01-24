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
struct mn88472_dev {int i2c_write_max; int ts_mode; int ts_clk; int active; int /*<<< orphan*/ * regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FIXED_TS_CLOCK 131 
 char* MN88472_FIRMWARE ; 
#define  PARALLEL_TS_MODE 130 
#define  SERIAL_TS_MODE 129 
#define  VARIABLE_TS_CLOCK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 struct mn88472_dev* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dvb_frontend *fe)
{
	struct i2c_client *client = fe->demodulator_priv;
	struct mn88472_dev *dev = FUNC3(client);
	int ret, len, rem;
	unsigned int utmp;
	const struct firmware *firmware;
	const char *name = MN88472_FIRMWARE;

	FUNC0(&client->dev, "\n");

	/* Power up */
	ret = FUNC7(dev->regmap[2], 0x05, 0x00);
	if (ret)
		goto err;
	ret = FUNC7(dev->regmap[2], 0x0b, 0x00);
	if (ret)
		goto err;
	ret = FUNC7(dev->regmap[2], 0x0c, 0x00);
	if (ret)
		goto err;

	/* Check if firmware is already running */
	ret = FUNC6(dev->regmap[0], 0xf5, &utmp);
	if (ret)
		goto err;
	if (!(utmp & 0x01))
		goto warm;

	ret = FUNC9(&firmware, name, &client->dev);
	if (ret) {
		FUNC1(&client->dev, "firmware file '%s' not found\n", name);
		goto err;
	}

	FUNC2(&client->dev, "downloading firmware from file '%s'\n", name);

	ret = FUNC7(dev->regmap[0], 0xf5, 0x03);
	if (ret)
		goto err_release_firmware;

	for (rem = firmware->size; rem > 0; rem -= (dev->i2c_write_max - 1)) {
		len = FUNC4(dev->i2c_write_max - 1, rem);
		ret = FUNC5(dev->regmap[0], 0xf6,
					&firmware->data[firmware->size - rem],
					len);
		if (ret) {
			FUNC1(&client->dev, "firmware download failed %d\n",
				ret);
			goto err_release_firmware;
		}
	}

	/* Parity check of firmware */
	ret = FUNC6(dev->regmap[0], 0xf8, &utmp);
	if (ret)
		goto err_release_firmware;
	if (utmp & 0x10) {
		ret = -EINVAL;
		FUNC1(&client->dev, "firmware did not run\n");
		goto err_release_firmware;
	}

	ret = FUNC7(dev->regmap[0], 0xf5, 0x00);
	if (ret)
		goto err_release_firmware;

	FUNC8(firmware);
warm:
	/* TS config */
	switch (dev->ts_mode) {
	case SERIAL_TS_MODE:
		utmp = 0x1d;
		break;
	case PARALLEL_TS_MODE:
		utmp = 0x00;
		break;
	default:
		ret = -EINVAL;
		goto err;
	}
	ret = FUNC7(dev->regmap[2], 0x08, utmp);
	if (ret)
		goto err;

	switch (dev->ts_clk) {
	case VARIABLE_TS_CLOCK:
		utmp = 0xe3;
		break;
	case FIXED_TS_CLOCK:
		utmp = 0xe1;
		break;
	default:
		ret = -EINVAL;
		goto err;
	}
	ret = FUNC7(dev->regmap[0], 0xd9, utmp);
	if (ret)
		goto err;

	dev->active = true;

	return 0;
err_release_firmware:
	FUNC8(firmware);
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}