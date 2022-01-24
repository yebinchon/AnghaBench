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
struct max44009_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX44009_CFG_MAN_MODE_MASK ; 
 int /*<<< orphan*/  MAX44009_REG_CFG ; 
 int NSEC_PER_SEC ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  max44009_int_time_ns_array ; 

__attribute__((used)) static int FUNC4(struct max44009_data *data,
				   int val, int val2)
{
	struct i2c_client *client = data->client;
	int ret, int_time, config;
	s64 ns;

	ns = val * NSEC_PER_SEC + val2;
	int_time = FUNC1(
			ns,
			max44009_int_time_ns_array,
			FUNC0(max44009_int_time_ns_array));

	ret = FUNC2(client, MAX44009_REG_CFG);
	if (ret < 0)
		return ret;

	config = ret;
	config &= int_time;

	/*
	 * To set the integration time, the device must also be in manual
	 * mode.
	 */
	config |= MAX44009_CFG_MAN_MODE_MASK;

	return FUNC3(client, MAX44009_REG_CFG, config);
}