#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ms_ht_dev {TYPE_1__* client; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MS_SENSORS_CONFIG_REG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,int,int*) ; 
 int FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

ssize_t FUNC6(struct ms_ht_dev *dev_data,
				const char *buf, size_t len)
{
	u8 val, config_reg;
	int ret;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		return ret;

	if (val > 1)
		return -EINVAL;

	FUNC4(&dev_data->lock);
	ret = FUNC3(dev_data->client, &config_reg);
	if (ret) {
		FUNC5(&dev_data->lock);
		return ret;
	}

	config_reg &= 0xFB;
	config_reg |= val << 2;

	ret = FUNC1(dev_data->client,
					MS_SENSORS_CONFIG_REG_WRITE,
					config_reg);
	FUNC5(&dev_data->lock);
	if (ret) {
		FUNC0(&dev_data->client->dev, "Unable to write config register\n");
		return ret;
	}

	return len;
}