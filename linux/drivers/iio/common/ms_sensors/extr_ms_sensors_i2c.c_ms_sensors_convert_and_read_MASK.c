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
typedef  int u32 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  MS_SENSORS_NO_READ_CMD ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 

int FUNC7(void *cli, u8 conv, u8 rd,
				unsigned int delay, u32 *adc)
{
	int ret;
	__be32 buf = 0;
	struct i2c_client *client = cli;

	/* Trigger conversion */
	ret = FUNC5(client, conv);
	if (ret)
		goto err;
	FUNC6(delay, delay + 1000);

	/* Retrieve ADC value */
	if (rd != MS_SENSORS_NO_READ_CMD)
		ret = FUNC4(client, rd, 3, (u8 *)&buf);
	else
		ret = FUNC3(client, (u8 *)&buf, 3);
	if (ret < 0)
		goto err;

	FUNC1(&client->dev, "ADC raw value : %x\n", FUNC0(buf) >> 8);
	*adc = FUNC0(buf) >> 8;

	return 0;
err:
	FUNC2(&client->dev, "Unable to make sensor adc conversion\n");
	return ret;
}