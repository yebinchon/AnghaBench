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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ak8975_data {TYPE_1__* def; int /*<<< orphan*/  eoc_gpio; scalar_t__ eoc_irq; } ;
struct TYPE_2__ {int* ctrl_masks; int /*<<< orphan*/ * ctrl_regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MODE_ONCE ; 
 size_t ST1_DRDY ; 
 size_t ST2 ; 
 size_t ST2_DERR ; 
 size_t ST2_HOFL ; 
 int FUNC0 (struct ak8975_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ak8975_data*) ; 
 int FUNC5 (struct ak8975_data*) ; 
 int FUNC6 (struct ak8975_data*) ; 

__attribute__((used)) static int FUNC7(struct ak8975_data *data,
				  const struct i2c_client *client)
{
	/* Set up the device for taking a sample. */
	int ret = FUNC0(data, MODE_ONCE);

	if (ret < 0) {
		FUNC1(&client->dev, "Error in setting operating mode\n");
		return ret;
	}

	/* Wait for the conversion to complete. */
	if (data->eoc_irq)
		ret = FUNC5(data);
	else if (FUNC2(data->eoc_gpio))
		ret = FUNC4(data);
	else
		ret = FUNC6(data);
	if (ret < 0)
		return ret;

	/* This will be executed only for non-interrupt based waiting case */
	if (ret & data->def->ctrl_masks[ST1_DRDY]) {
		ret = FUNC3(client,
					       data->def->ctrl_regs[ST2]);
		if (ret < 0) {
			FUNC1(&client->dev, "Error in reading ST2\n");
			return ret;
		}
		if (ret & (data->def->ctrl_masks[ST2_DERR] |
			   data->def->ctrl_masks[ST2_HOFL])) {
			FUNC1(&client->dev, "ST2 status error 0x%x\n", ret);
			return -EINVAL;
		}
	}

	return 0;
}