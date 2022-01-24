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
struct rtl2832_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  i2c_gate_work; struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct rtl2832_dev* FUNC2 (struct i2c_mux_core*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_mux_core *muxc, u32 chan_id)
{
	struct rtl2832_dev *dev = FUNC2(muxc);
	struct i2c_client *client = dev->client;
	int ret;

	/* terminate possible gate closing */
	FUNC0(&dev->i2c_gate_work);

	/* open gate */
	ret = FUNC3(dev->regmap, 0x101, 0x08, 0x08);
	if (ret)
		goto err;

	return 0;
err:
	FUNC1(&client->dev, "failed=%d\n", ret);
	return ret;
}