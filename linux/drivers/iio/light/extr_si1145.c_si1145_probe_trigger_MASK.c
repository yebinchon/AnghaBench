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
struct si1145_data {struct iio_trigger* trig; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct iio_trigger* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_trigger*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct iio_trigger*) ; 
 struct si1145_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_trigger_generic_data_rdy_poll ; 
 int /*<<< orphan*/  FUNC5 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_trigger*,struct iio_dev*) ; 
 int /*<<< orphan*/  si1145_trigger_ops ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct si1145_data *data = FUNC4(indio_dev);
	struct i2c_client *client = data->client;
	struct iio_trigger *trig;
	int ret;

	trig = FUNC1(&client->dev,
			"%s-dev%d", indio_dev->name, indio_dev->id);
	if (!trig)
		return -ENOMEM;

	trig->dev.parent = &client->dev;
	trig->ops = &si1145_trigger_ops;
	FUNC6(trig, indio_dev);

	ret = FUNC3(&client->dev, client->irq,
			  iio_trigger_generic_data_rdy_poll,
			  IRQF_TRIGGER_FALLING,
			  "si1145_irq",
			  trig);
	if (ret < 0) {
		FUNC0(&client->dev, "irq request failed\n");
		return ret;
	}

	ret = FUNC2(&client->dev, trig);
	if (ret)
		return ret;

	data->trig = trig;
	indio_dev->trig = FUNC5(data->trig);

	return 0;
}