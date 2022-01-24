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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct iio_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ak_def {int /*<<< orphan*/  range; int /*<<< orphan*/ * data_regs; } ;
struct ak8975_data {int /*<<< orphan*/  lock; struct i2c_client* client; struct ak_def* def; } ;
typedef  int /*<<< orphan*/  rval ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 int FUNC0 (struct ak8975_data*,struct i2c_client const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct i2c_client const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct ak8975_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s16 ; 

__attribute__((used)) static int FUNC11(struct iio_dev *indio_dev, int index, int *val)
{
	struct ak8975_data *data = FUNC4(indio_dev);
	const struct i2c_client *client = data->client;
	const struct ak_def *def = data->def;
	__le16 rval;
	u16 buff;
	int ret;

	FUNC8(&data->client->dev);

	FUNC6(&data->lock);

	ret = FUNC0(data, client);
	if (ret)
		goto exit;

	ret = FUNC3(
			client, def->data_regs[index],
			sizeof(rval), (u8*)&rval);
	if (ret < 0)
		goto exit;

	FUNC7(&data->lock);

	FUNC9(&data->client->dev);
	FUNC10(&data->client->dev);

	/* Swap bytes and convert to valid range. */
	buff = FUNC5(rval);
	*val = FUNC1(s16, buff, -def->range, def->range);
	return IIO_VAL_INT;

exit:
	FUNC7(&data->lock);
	FUNC2(&client->dev, "Error in reading axis\n");
	return ret;
}