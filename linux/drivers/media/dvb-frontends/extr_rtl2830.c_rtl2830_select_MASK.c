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
typedef  int /*<<< orphan*/  u32 ;
struct rtl2830_dev {int /*<<< orphan*/  regmap; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct rtl2830_dev* FUNC1 (struct i2c_client*) ; 
 struct i2c_client* FUNC2 (struct i2c_mux_core*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_mux_core *muxc, u32 chan_id)
{
	struct i2c_client *client = FUNC2(muxc);
	struct rtl2830_dev *dev = FUNC1(client);
	int ret;

	FUNC0(&client->dev, "\n");

	/* open I2C repeater for 1 transfer, closes automatically */
	/* XXX: regmap_update_bits() does not lock I2C adapter */
	ret = FUNC3(dev->regmap, 0x101, 0x08, 0x08);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}