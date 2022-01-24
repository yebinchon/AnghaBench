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
struct opt3001 {int use_irq; struct device* dev; int /*<<< orphan*/  result_ready_queue; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct iio_dev* FUNC3 (struct device*,int) ; 
 int FUNC4 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 struct opt3001* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opt3001_channels ; 
 int FUNC9 (struct opt3001*) ; 
 int /*<<< orphan*/  opt3001_info ; 
 int /*<<< orphan*/  opt3001_irq ; 
 int FUNC10 (struct opt3001*) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;

	struct iio_dev *iio;
	struct opt3001 *opt;
	int irq = client->irq;
	int ret;

	iio = FUNC3(dev, sizeof(*opt));
	if (!iio)
		return -ENOMEM;

	opt = FUNC6(iio);
	opt->client = client;
	opt->dev = dev;

	FUNC8(&opt->lock);
	FUNC7(&opt->result_ready_queue);
	FUNC5(client, iio);

	ret = FUNC10(opt);
	if (ret)
		return ret;

	ret = FUNC9(opt);
	if (ret)
		return ret;

	iio->name = client->name;
	iio->channels = opt3001_channels;
	iio->num_channels = FUNC0(opt3001_channels);
	iio->dev.parent = dev;
	iio->modes = INDIO_DIRECT_MODE;
	iio->info = &opt3001_info;

	ret = FUNC4(dev, iio);
	if (ret) {
		FUNC2(dev, "failed to register IIO device\n");
		return ret;
	}

	/* Make use of INT pin only if valid IRQ no. is given */
	if (irq > 0) {
		ret = FUNC11(irq, NULL, opt3001_irq,
				IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				"opt3001", iio);
		if (ret) {
			FUNC2(dev, "failed to request IRQ #%d\n", irq);
			return ret;
		}
		opt->use_irq = true;
	} else {
		FUNC1(opt->dev, "enabling interrupt-less operation\n");
	}

	return 0;
}