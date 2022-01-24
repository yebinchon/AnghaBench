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
typedef  int /*<<< orphan*/  u8 ;
struct reg_val {int reg; int /*<<< orphan*/  val; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct af9033_dev {int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX_TAB_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct af9033_dev *dev,
				 const struct reg_val *tab, int tab_len)
{
	struct i2c_client *client = dev->client;
#define MAX_TAB_LEN 212
	int ret, i, j;
	u8 buf[1 + MAX_TAB_LEN];

	FUNC0(&client->dev, "tab_len=%d\n", tab_len);

	if (tab_len > sizeof(buf)) {
		FUNC1(&client->dev, "tab len %d is too big\n", tab_len);
		return -EINVAL;
	}

	for (i = 0, j = 0; i < tab_len; i++) {
		buf[j] = tab[i].val;

		if (i == tab_len - 1 || tab[i].reg != tab[i + 1].reg - 1) {
			ret = FUNC2(dev->regmap, tab[i].reg - j,
						buf, j + 1);
			if (ret)
				goto err;

			j = 0;
		} else {
			j++;
		}
	}

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}