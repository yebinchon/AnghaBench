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
struct thermal_cooling_device {struct max6650_data* devdata; } ;
struct max6650_data {int config; unsigned long cooling_dev_state; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  dac; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX6650_CFG_MODE_OFF ; 
 int /*<<< orphan*/  MAX6650_CFG_MODE_OPEN_LOOP ; 
 int MAX6650_CFG_V12 ; 
 int /*<<< orphan*/  MAX6650_REG_DAC ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct max6650_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 

__attribute__((used)) static int FUNC6(struct thermal_cooling_device *cdev,
				 unsigned long state)
{
	struct max6650_data *data = cdev->devdata;
	struct i2c_client *client = data->client;
	int err;

	state = FUNC0(state, 0, 255);

	FUNC3(&data->update_lock);

	data->dac = FUNC5(state, data->config & MAX6650_CFG_V12);
	err = FUNC1(client, MAX6650_REG_DAC, data->dac);
	if (!err) {
		FUNC2(data, state ?
					   MAX6650_CFG_MODE_OPEN_LOOP :
					   MAX6650_CFG_MODE_OFF);
		data->cooling_dev_state = state;
	}

	FUNC4(&data->update_lock);

	return err;
}