#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct apds9300_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int APDS9300_CMD ; 
 int APDS9300_CONTROL ; 
 int APDS9300_POWER_ON ; 
 int ENODEV ; 
 int FUNC0 (struct apds9300_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct apds9300_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(struct apds9300_data *data)
{
	int ret;

	/* Need to set power off to ensure that the chip is off */
	ret = FUNC1(data, 0);
	if (ret < 0)
		goto err;
	/*
	 * Probe the chip. To do so we try to power up the device and then to
	 * read back the 0x03 code
	 */
	ret = FUNC1(data, 1);
	if (ret < 0)
		goto err;
	ret = FUNC3(data->client,
			APDS9300_CONTROL | APDS9300_CMD);
	if (ret != APDS9300_POWER_ON) {
		ret = -ENODEV;
		goto err;
	}
	/*
	 * Disable interrupt to ensure thai it is doesn't enable
	 * i.e. after device soft reset
	 */
	ret = FUNC0(data, 0);
	if (ret < 0)
		goto err;

	return 0;

err:
	FUNC2(&data->client->dev, "failed to init the chip\n");
	return ret;
}