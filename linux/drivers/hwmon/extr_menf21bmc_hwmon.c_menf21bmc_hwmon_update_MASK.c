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
struct menf21bmc_hwmon {int valid; int* in_val; scalar_t__ last_update; int /*<<< orphan*/  i2c_client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int BMC_VOLT_COUNT ; 
 struct menf21bmc_hwmon* FUNC0 (int) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct menf21bmc_hwmon* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct menf21bmc_hwmon *FUNC5(struct device *dev)
{
	int i;
	int val;
	struct menf21bmc_hwmon *drv_data = FUNC2(dev);
	struct menf21bmc_hwmon *data_ret = drv_data;

	if (FUNC4(jiffies, drv_data->last_update + HZ)
	    || !drv_data->valid) {
		for (i = 0; i < BMC_VOLT_COUNT; i++) {
			val = FUNC3(drv_data->i2c_client,
						       FUNC1(i));
			if (val < 0) {
				data_ret = FUNC0(val);
				goto abort;
			}
			drv_data->in_val[i] = val;
		}
		drv_data->last_update = jiffies;
		drv_data->valid = true;
	}
abort:
	return data_ret;
}