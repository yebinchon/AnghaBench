#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap_config {int reg_bits; int val_bits; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {struct cxd2099_cfg* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  addr; } ;
struct cxd2099_cfg {TYPE_1__** en; } ;
struct TYPE_3__ {int /*<<< orphan*/ * write_data; int /*<<< orphan*/ * read_data; struct cxd* data; } ;
struct cxd {int lastaddress; int clk_reg_b; int clk_reg_f; int /*<<< orphan*/  regmap; TYPE_1__ en; int /*<<< orphan*/  lock; int /*<<< orphan*/  cfg; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buffermode ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 TYPE_1__ en_templ ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct cxd*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxd*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxd*) ; 
 struct cxd* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cxd2099_cfg*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct regmap_config const*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct cxd *ci;
	struct cxd2099_cfg *cfg = client->dev.platform_data;
	static const struct regmap_config rm_cfg = {
		.reg_bits = 8,
		.val_bits = 8,
	};
	unsigned int val;
	int ret;

	ci = FUNC6(sizeof(*ci), GFP_KERNEL);
	if (!ci) {
		ret = -ENOMEM;
		goto err;
	}

	ci->client = client;
	FUNC7(&ci->cfg, cfg, sizeof(ci->cfg));

	ci->regmap = FUNC10(client, &rm_cfg);
	if (FUNC0(ci->regmap)) {
		ret = FUNC1(ci->regmap);
		goto err_kfree;
	}

	ret = FUNC11(ci->regmap, 0x00, &val);
	if (ret < 0) {
		FUNC2(&client->dev, "No CXD2099AR detected at 0x%02x\n",
			 client->addr);
		goto err_rmexit;
	}

	FUNC8(&ci->lock);
	ci->lastaddress = 0xff;
	ci->clk_reg_b = 0x4a;
	ci->clk_reg_f = 0x1b;

	ci->en = en_templ;
	ci->en.data = ci;
	FUNC4(ci);
	FUNC2(&client->dev, "Attached CXD2099AR at 0x%02x\n", client->addr);

	*cfg->en = &ci->en;

	if (!buffermode) {
		ci->en.read_data = NULL;
		ci->en.write_data = NULL;
	} else {
		FUNC2(&client->dev, "Using CXD2099AR buffer mode");
	}

	FUNC3(client, ci);

	return 0;

err_rmexit:
	FUNC9(ci->regmap);
err_kfree:
	FUNC5(ci);
err:

	return ret;
}