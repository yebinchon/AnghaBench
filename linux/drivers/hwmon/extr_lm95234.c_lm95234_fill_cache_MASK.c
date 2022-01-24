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
struct lm95234_data {int* tcrit1; int* tcrit2; int* toffset; int thyst; int sensor_type; int /*<<< orphan*/  interval; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  LM95234_REG_CONVRATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LM95234_REG_REM_MODEL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LM95234_REG_TCRIT_HYST ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * update_intervals ; 

__attribute__((used)) static int FUNC6(struct lm95234_data *data,
			      struct i2c_client *client)
{
	int i, ret;

	ret = FUNC4(client, LM95234_REG_CONVRATE);
	if (ret < 0)
		return ret;

	data->interval = FUNC5(update_intervals[ret & 0x03]);

	for (i = 0; i < FUNC0(data->tcrit1); i++) {
		ret = FUNC4(client, FUNC2(i));
		if (ret < 0)
			return ret;
		data->tcrit1[i] = ret;
	}
	for (i = 0; i < FUNC0(data->tcrit2); i++) {
		ret = FUNC4(client, FUNC3(i));
		if (ret < 0)
			return ret;
		data->tcrit2[i] = ret;
	}
	for (i = 0; i < FUNC0(data->toffset); i++) {
		ret = FUNC4(client, FUNC1(i));
		if (ret < 0)
			return ret;
		data->toffset[i] = ret;
	}

	ret = FUNC4(client, LM95234_REG_TCRIT_HYST);
	if (ret < 0)
		return ret;
	data->thyst = ret;

	ret = FUNC4(client, LM95234_REG_REM_MODEL);
	if (ret < 0)
		return ret;
	data->sensor_type = ret;

	return 0;
}