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
struct regmap {int dummy; } ;
struct reg_val_mask {int reg; unsigned int val; unsigned int mask; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cxd2820r_priv {struct regmap** regmap; struct i2c_client** client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct regmap*,unsigned int,unsigned int) ; 
 int FUNC2 (struct regmap*,unsigned int,unsigned int,unsigned int) ; 

int FUNC3(struct cxd2820r_priv *priv,
				 const struct reg_val_mask *tab, int tab_len)
{
	struct i2c_client *client = priv->client[0];
	int ret;
	unsigned int i, reg, mask, val;
	struct regmap *regmap;

	FUNC0(&client->dev, "tab_len=%d\n", tab_len);

	for (i = 0; i < tab_len; i++) {
		if ((tab[i].reg >> 16) & 0x1)
			regmap = priv->regmap[1];
		else
			regmap = priv->regmap[0];

		reg = (tab[i].reg >> 0) & 0xffff;
		val = tab[i].val;
		mask = tab[i].mask;

		if (mask == 0xff)
			ret = FUNC1(regmap, reg, val);
		else
			ret = FUNC2(regmap, reg, mask, val);
		if (ret)
			goto error;
	}

	return 0;
error:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}