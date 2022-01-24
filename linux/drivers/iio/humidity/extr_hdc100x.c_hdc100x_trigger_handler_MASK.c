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
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct hdc100x_data {int* adc_int_us; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDC100X_REG_TEMP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct hdc100x_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct hdc100x_data *data = FUNC4(indio_dev);
	struct i2c_client *client = data->client;
	int delay = data->adc_int_us[0] + data->adc_int_us[1];
	int ret;
	s16 buf[8];  /* 2x s16 + padding + 8 byte timestamp */

	/* dual read starts at temp register */
	FUNC7(&data->lock);
	ret = FUNC2(client, HDC100X_REG_TEMP);
	if (ret < 0) {
		FUNC0(&client->dev, "cannot start measurement\n");
		goto err;
	}
	FUNC9(delay, delay + 1000);

	ret = FUNC1(client, (u8 *)buf, 4);
	if (ret < 0) {
		FUNC0(&client->dev, "cannot read sensor data\n");
		goto err;
	}

	FUNC5(indio_dev, buf,
					   FUNC3(indio_dev));
err:
	FUNC8(&data->lock);
	FUNC6(indio_dev->trig);

	return IRQ_HANDLED;
}