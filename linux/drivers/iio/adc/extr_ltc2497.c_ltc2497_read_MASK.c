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
typedef  scalar_t__ u8 ;
struct ltc2497_st {scalar_t__ addr_prev; int /*<<< orphan*/  buf; int /*<<< orphan*/  time_prev; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  LTC2497_CONVERSION_TIME_MS ; 
 scalar_t__ LTC2497_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,char*,int) ; 
 int FUNC3 (struct i2c_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct ltc2497_st*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ltc2497_st *st, u8 address, int *val)
{
	struct i2c_client *client = st->client;
	int ret;

	ret = FUNC5(st);
	if (ret < 0)
		return ret;

	if (ret || st->addr_prev != address) {
		ret = FUNC3(st->client,
					   LTC2497_ENABLE | address);
		if (ret < 0)
			return ret;
		st->addr_prev = address;
		if (FUNC6(LTC2497_CONVERSION_TIME_MS))
			return -ERESTARTSYS;
	}
	ret = FUNC2(client, (char *)&st->buf, 3);
	if (ret < 0)  {
		FUNC1(&client->dev, "i2c_master_recv failed\n");
		return ret;
	}
	st->time_prev = FUNC4();

	/* convert and shift the result,
	 * and finally convert from offset binary to signed integer
	 */
	*val = (FUNC0(st->buf) >> 14) - (1 << 17);

	return ret;
}