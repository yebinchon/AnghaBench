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
struct ccs811_data {struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCS811_ALG_RESULT_DATA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ccs811_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ccs811_data *data = FUNC3(indio_dev);
	struct i2c_client *client = data->client;
	s16 buf[8]; /* s16 eCO2 + s16 TVOC + padding + 8 byte timestamp */
	int ret;

	ret = FUNC1(client, CCS811_ALG_RESULT_DATA, 4,
					    (u8 *)&buf);
	if (ret != 4) {
		FUNC0(&client->dev, "cannot read sensor data\n");
		goto err;
	}

	FUNC4(indio_dev, buf,
					   FUNC2(indio_dev));

err:
	FUNC5(indio_dev->trig);

	return IRQ_HANDLED;
}