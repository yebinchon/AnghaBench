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
typedef  int u8 ;
struct srf08_data {unsigned int sensitivity; int /*<<< orphan*/  lock; TYPE_1__* chip_info; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int num_sensitivity_avail; unsigned int* sensitivity_avail; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SRF08_WRITE_MAX_GAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct srf08_data *data,
							unsigned int val)
{
	struct i2c_client *client = data->client;
	int ret, i;
	u8 regval;

	if (!val)
		return -EINVAL;

	for (i = 0; i < data->chip_info->num_sensitivity_avail; i++)
		if (val && (val == data->chip_info->sensitivity_avail[i])) {
			regval = i;
			break;
		}

	if (i >= data->chip_info->num_sensitivity_avail)
		return -EINVAL;

	FUNC2(&data->lock);

	ret = FUNC1(client, SRF08_WRITE_MAX_GAIN, regval);
	if (ret < 0) {
		FUNC0(&client->dev, "write_sensitivity - err: %d\n", ret);
		FUNC3(&data->lock);
		return ret;
	}

	data->sensitivity = val;

	FUNC3(&data->lock);

	return 0;
}