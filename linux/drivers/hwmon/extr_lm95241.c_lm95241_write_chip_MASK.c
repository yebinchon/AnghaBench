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
typedef  int u8 ;
typedef  int u32 ;
struct lm95241_data {int config; int interval; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int CFG_CR0076 ; 
 int CFG_CR0182 ; 
 int CFG_CR1000 ; 
 int CFG_CR2700 ; 
 int CFG_CRMASK ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LM95241_REG_RW_CONFIG ; 
 struct lm95241_data* FUNC0 (struct device*) ; 
#define  hwmon_chip_update_interval 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct lm95241_data *data = FUNC0(dev);
	int convrate;
	u8 config;
	int ret;

	FUNC2(&data->update_lock);

	switch (attr) {
	case hwmon_chip_update_interval:
		config = data->config & ~CFG_CRMASK;
		if (val < 130) {
			convrate = 76;
			config |= CFG_CR0076;
		} else if (val < 590) {
			convrate = 182;
			config |= CFG_CR0182;
		} else if (val < 1850) {
			convrate = 1000;
			config |= CFG_CR1000;
		} else {
			convrate = 2700;
			config |= CFG_CR2700;
		}
		data->interval = convrate;
		data->config = config;
		ret = FUNC1(data->client,
						LM95241_REG_RW_CONFIG, config);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}
	FUNC3(&data->update_lock);
	return ret;
}