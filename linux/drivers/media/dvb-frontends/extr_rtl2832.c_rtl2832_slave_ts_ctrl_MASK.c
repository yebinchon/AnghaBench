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
struct rtl2832_dev {int slave_ts; int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVBT_PIP_ON ; 
 int /*<<< orphan*/  DVBT_SOFT_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct rtl2832_dev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC3 (struct rtl2832_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, bool enable)
{
	struct rtl2832_dev *dev = FUNC1(client);
	int ret;

	FUNC0(&client->dev, "enable=%d\n", enable);

	if (enable) {
		ret = FUNC3(dev, DVBT_SOFT_RST, 0x0);
		if (ret)
			goto err;
		ret = FUNC2(dev->regmap, 0x10c, "\x5f\xff", 2);
		if (ret)
			goto err;
		ret = FUNC3(dev, DVBT_PIP_ON, 0x1);
		if (ret)
			goto err;
		ret = FUNC2(dev->regmap, 0x0bc, "\x18", 1);
		if (ret)
			goto err;
		ret = FUNC2(dev->regmap, 0x192, "\x7f\xf7\xff", 3);
		if (ret)
			goto err;
	} else {
		ret = FUNC2(dev->regmap, 0x192, "\x00\x0f\xff", 3);
		if (ret)
			goto err;
		ret = FUNC2(dev->regmap, 0x0bc, "\x08", 1);
		if (ret)
			goto err;
		ret = FUNC3(dev, DVBT_PIP_ON, 0x0);
		if (ret)
			goto err;
		ret = FUNC2(dev->regmap, 0x10c, "\x00\x00", 2);
		if (ret)
			goto err;
		ret = FUNC3(dev, DVBT_SOFT_RST, 0x1);
		if (ret)
			goto err;
	}

	dev->slave_ts = enable;

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}