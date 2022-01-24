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
typedef  int u8 ;
struct zopt2201_data {size_t res; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {unsigned long us; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ZOPT2201_MAIN_CTRL ; 
 int /*<<< orphan*/  ZOPT2201_MAIN_STATUS ; 
 int ZOPT2201_MAIN_STATUS_DRDY ; 
 int ZOPT2201_UVB_DATA ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int,int,int*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 
 int FUNC7 (struct zopt2201_data*,int) ; 
 TYPE_1__* zopt2201_resolution ; 

__attribute__((used)) static int FUNC8(struct zopt2201_data *data, u8 reg)
{
	struct i2c_client *client = data->client;
	int tries = 10;
	u8 buf[3];
	int ret;

	FUNC4(&data->lock);
	ret = FUNC7(data, reg == ZOPT2201_UVB_DATA);
	if (ret < 0)
		goto fail;

	while (tries--) {
		unsigned long t = zopt2201_resolution[data->res].us;

		if (t <= 20000)
			FUNC6(t, t + 1000);
		else
			FUNC3(t / 1000);
		ret = FUNC0(client, ZOPT2201_MAIN_STATUS);
		if (ret < 0)
			goto fail;
		if (ret & ZOPT2201_MAIN_STATUS_DRDY)
			break;
	}

	if (tries < 0) {
		ret = -ETIMEDOUT;
		goto fail;
	}

	ret = FUNC1(client, reg, sizeof(buf), buf);
	if (ret < 0)
		goto fail;

	ret = FUNC2(client, ZOPT2201_MAIN_CTRL, 0x00);
	if (ret < 0)
		goto fail;
	FUNC5(&data->lock);

	return (buf[2] << 16) | (buf[1] << 8) | buf[0];

fail:
	FUNC5(&data->lock);
	return ret;
}