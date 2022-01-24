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

/* Variables and functions */
 int /*<<< orphan*/  CCS811_MEAS_MODE ; 
 int /*<<< orphan*/  CCS811_MODE_IAQ_1SEC ; 
 int FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	int ret;

	ret = FUNC0(client);
	if (ret < 0)
		return ret;

	return FUNC1(client, CCS811_MEAS_MODE,
					 CCS811_MODE_IAQ_1SEC);
}