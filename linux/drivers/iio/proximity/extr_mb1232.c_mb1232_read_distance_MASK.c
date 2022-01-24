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
struct mb1232_data {scalar_t__ irqnr; int /*<<< orphan*/  lock; int /*<<< orphan*/  ranging; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  MB1232_RANGE_COMMAND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*,char*,int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static s16 FUNC9(struct mb1232_data *data)
{
	struct i2c_client *client = data->client;
	int ret;
	s16 distance;
	__be16 buf;

	FUNC5(&data->lock);

	FUNC7(&data->ranging);

	ret = FUNC3(client, MB1232_RANGE_COMMAND);
	if (ret < 0) {
		FUNC1(&client->dev, "write command - err: %d\n", ret);
		goto error_unlock;
	}

	if (data->irqnr >= 0) {
		/* it cannot take more than 100 ms */
		ret = FUNC8(&data->ranging,
									HZ/10);
		if (ret < 0)
			goto error_unlock;
		else if (ret == 0) {
			ret = -ETIMEDOUT;
			goto error_unlock;
		}
	} else {
		/* use simple sleep if announce irq is not connected */
		FUNC4(15);
	}

	ret = FUNC2(client, (char *)&buf, sizeof(buf));
	if (ret < 0) {
		FUNC1(&client->dev, "i2c_master_recv: ret=%d\n", ret);
		goto error_unlock;
	}

	distance = FUNC0(buf);
	/* check for not returning misleading error codes */
	if (distance < 0) {
		FUNC1(&client->dev, "distance=%d\n", distance);
		ret = -EINVAL;
		goto error_unlock;
	}

	FUNC6(&data->lock);

	return distance;

error_unlock:
	FUNC6(&data->lock);

	return ret;
}