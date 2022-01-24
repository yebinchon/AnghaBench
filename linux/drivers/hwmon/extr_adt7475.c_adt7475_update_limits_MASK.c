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
struct i2c_client {int dummy; } ;
struct adt7475_data {int config4; int config5; int has_voltage; int** voltage; int** temp; int** tach; int** pwm; int* range; int /*<<< orphan*/  has_pwm2; int /*<<< orphan*/  has_fan4; } ;

/* Variables and functions */
 int ADT7475_PWM_COUNT ; 
 int ADT7475_TACH_COUNT ; 
 int ADT7475_TEMP_COUNT ; 
 int ADT7475_VOLTAGE_COUNT ; 
 size_t AUTOMIN ; 
 size_t MAX ; 
 size_t MIN ; 
 size_t OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  REG_CONFIG4 ; 
 int /*<<< orphan*/  REG_CONFIG5 ; 
 int /*<<< orphan*/  REG_VTT_MAX ; 
 int /*<<< orphan*/  REG_VTT_MIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 size_t THERM ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,int) ; 
 int FUNC14 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct adt7475_data* FUNC15 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client)
{
	struct adt7475_data *data = FUNC15(client);
	int i;
	int ret;

	ret = FUNC11(REG_CONFIG4);
	if (ret < 0)
		return ret;
	data->config4 = ret;

	ret = FUNC11(REG_CONFIG5);
	if (ret < 0)
		return ret;
	data->config5 = ret;

	for (i = 0; i < ADT7475_VOLTAGE_COUNT; i++) {
		if (!(data->has_voltage & (1 << i)))
			continue;
		/* Adjust values so they match the input precision */
		ret = FUNC11(FUNC10(i));
		if (ret < 0)
			return ret;
		data->voltage[MIN][i] = ret << 2;

		ret = FUNC11(FUNC9(i));
		if (ret < 0)
			return ret;
		data->voltage[MAX][i] = ret << 2;
	}

	if (data->has_voltage & (1 << 5)) {
		ret = FUNC11(REG_VTT_MIN);
		if (ret < 0)
			return ret;
		data->voltage[MIN][5] = ret << 2;

		ret = FUNC11(REG_VTT_MAX);
		if (ret < 0)
			return ret;
		data->voltage[MAX][5] = ret << 2;
	}

	for (i = 0; i < ADT7475_TEMP_COUNT; i++) {
		/* Adjust values so they match the input precision */
		ret = FUNC11(FUNC4(i));
		if (ret < 0)
			return ret;
		data->temp[MIN][i] = ret << 2;

		ret = FUNC11(FUNC3(i));
		if (ret < 0)
			return ret;
		data->temp[MAX][i] = ret << 2;

		ret = FUNC11(FUNC7(i));
		if (ret < 0)
			return ret;
		data->temp[AUTOMIN][i] = ret << 2;

		ret = FUNC11(FUNC6(i));
		if (ret < 0)
			return ret;
		data->temp[THERM][i] = ret << 2;

		ret = FUNC11(FUNC5(i));
		if (ret < 0)
			return ret;
		data->temp[OFFSET][i] = ret;
	}
	FUNC12(client);

	for (i = 0; i < ADT7475_TACH_COUNT; i++) {
		if (i == 3 && !data->has_fan4)
			continue;
		ret = FUNC14(client, FUNC2(i));
		if (ret < 0)
			return ret;
		data->tach[MIN][i] = ret;
	}

	for (i = 0; i < ADT7475_PWM_COUNT; i++) {
		if (i == 1 && !data->has_pwm2)
			continue;
		ret = FUNC11(FUNC0(i));
		if (ret < 0)
			return ret;
		data->pwm[MAX][i] = ret;

		ret = FUNC11(FUNC1(i));
		if (ret < 0)
			return ret;
		data->pwm[MIN][i] = ret;
		/* Set the channel and control information */
		FUNC13(client, i);
	}

	ret = FUNC11(FUNC8(0));
	if (ret < 0)
		return ret;
	data->range[0] = ret;

	ret = FUNC11(FUNC8(1));
	if (ret < 0)
		return ret;
	data->range[1] = ret;

	ret = FUNC11(FUNC8(2));
	if (ret < 0)
		return ret;
	data->range[2] = ret;

	return 0;
}