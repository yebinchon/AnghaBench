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
typedef  int u16 ;
struct i2c_client {int dummy; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int index, int *t)
{
	int val;
	u16 temp = 0;

	if (index) {
		val = FUNC4(client,
					       FUNC2(index - 1));
		if (val < 0)
			return val;
		temp = val << 8;
		val = FUNC4(client,
					       FUNC3(index - 1));
		if (val < 0)
			return val;
		temp |= val;
		*t = temp;
	}
	/*
	 * Read signed temperature if unsigned temperature is 0,
	 * or if this is the local sensor.
	 */
	if (!temp) {
		val = FUNC4(client,
					       FUNC0(index));
		if (val < 0)
			return val;
		temp = val << 8;
		val = FUNC4(client,
					       FUNC1(index));
		if (val < 0)
			return val;
		temp |= val;
		*t = (s16)temp;
	}
	return 0;
}