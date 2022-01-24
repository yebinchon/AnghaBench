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
struct max31790_data {int* fan_config; int* fan_dynamics; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NR_CHANNEL ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
				struct max31790_data *data)
{
	int i, rv;

	for (i = 0; i < NR_CHANNEL; i++) {
		rv = FUNC2(client,
				FUNC0(i));
		if (rv < 0)
			return rv;
		data->fan_config[i] = rv;

		rv = FUNC2(client,
				FUNC1(i));
		if (rv < 0)
			return rv;
		data->fan_dynamics[i] = rv;
	}

	return 0;
}