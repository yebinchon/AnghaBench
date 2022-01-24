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
typedef  int u8 ;
struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {scalar_t__ id; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  LTC2978_MFR_COMMON ; 
 int LTC_NOT_BUSY ; 
 int LTC_NOT_PENDING ; 
 int /*<<< orphan*/  LTC_POLL_TIMEOUT ; 
 unsigned long jiffies ; 
 scalar_t__ ltc3883 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ltc2978_data*) ; 
 struct pmbus_driver_info* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 struct ltc2978_data* FUNC5 (struct pmbus_driver_info const*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	unsigned long timeout = jiffies + FUNC0(LTC_POLL_TIMEOUT);
	const struct pmbus_driver_info *info = FUNC2(client);
	struct ltc2978_data *data = FUNC5(info);
	int status;
	u8 mask;

	if (!FUNC1(data))
		return 0;

	/*
	 * LTC3883 does not support LTC_NOT_PENDING, even though
	 * the datasheet claims that it does.
	 */
	mask = LTC_NOT_BUSY;
	if (data->id != ltc3883)
		mask |= LTC_NOT_PENDING;

	do {
		status = FUNC3(client, 0, LTC2978_MFR_COMMON);
		if (status == -EBADMSG || status == -ENXIO) {
			/* PEC error or NACK: chip may be busy, try again */
			FUNC6(50, 100);
			continue;
		}
		if (status < 0)
			return status;

		if ((status & mask) == mask)
			return 0;

		FUNC6(50, 100);
	} while (FUNC4(jiffies, timeout));

	return -ETIMEDOUT;
}