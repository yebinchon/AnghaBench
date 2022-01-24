#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vcnl4035_data {TYPE_3__* client; TYPE_4__* drdy_trigger0; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_2__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  VCNL4035_IRQ_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct vcnl4035_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_triggered_buffer_setup_ops ; 
 int /*<<< orphan*/  vcnl4035_drdy_irq_thread ; 
 int /*<<< orphan*/  vcnl4035_trigger_consumer_handler ; 
 int /*<<< orphan*/  vcnl4035_trigger_ops ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	int ret;
	struct vcnl4035_data *data = FUNC5(indio_dev);

	data->drdy_trigger0 = FUNC1(
			indio_dev->dev.parent,
			"%s-dev%d", indio_dev->name, indio_dev->id);
	if (!data->drdy_trigger0)
		return -ENOMEM;

	data->drdy_trigger0->dev.parent = indio_dev->dev.parent;
	data->drdy_trigger0->ops = &vcnl4035_trigger_ops;
	FUNC6(data->drdy_trigger0, indio_dev);
	ret = FUNC2(indio_dev->dev.parent,
					data->drdy_trigger0);
	if (ret) {
		FUNC0(&data->client->dev, "iio trigger register failed\n");
		return ret;
	}

	/* Trigger setup */
	ret = FUNC3(indio_dev->dev.parent, indio_dev,
					NULL, vcnl4035_trigger_consumer_handler,
					&iio_triggered_buffer_setup_ops);
	if (ret < 0) {
		FUNC0(&data->client->dev, "iio triggered buffer setup failed\n");
		return ret;
	}

	/* IRQ to trigger mapping */
	ret = FUNC4(&data->client->dev, data->client->irq,
			NULL, vcnl4035_drdy_irq_thread,
			IRQF_TRIGGER_LOW | IRQF_ONESHOT,
			VCNL4035_IRQ_NAME, indio_dev);
	if (ret < 0)
		FUNC0(&data->client->dev, "request irq %d for trigger0 failed\n",
				data->client->irq);
	return ret;
}