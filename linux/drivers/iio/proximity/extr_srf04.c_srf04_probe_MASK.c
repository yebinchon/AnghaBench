#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct srf04_data {scalar_t__ irqnr; struct device* dev; void* gpiod_echo; void* gpiod_trig; int /*<<< orphan*/  falling; int /*<<< orphan*/  rising; int /*<<< orphan*/  lock; int /*<<< orphan*/  cfg; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (struct device*,int) ; 
 int FUNC6 (struct device*,struct iio_dev*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 scalar_t__ FUNC8 (void*) ; 
 scalar_t__ FUNC9 (void*) ; 
 struct srf04_data* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  of_srf04_match ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  srf04_chan_spec ; 
 int /*<<< orphan*/  srf04_handle_irq ; 
 int /*<<< orphan*/  srf04_iio_info ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct srf04_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC5(dev, sizeof(struct srf04_data));
	if (!indio_dev) {
		FUNC3(dev, "failed to allocate IIO device\n");
		return -ENOMEM;
	}

	data = FUNC10(indio_dev);
	data->dev = dev;
	data->cfg = FUNC13(of_srf04_match, dev)->data;

	FUNC12(&data->lock);
	FUNC11(&data->rising);
	FUNC11(&data->falling);

	data->gpiod_trig = FUNC4(dev, "trig", GPIOD_OUT_LOW);
	if (FUNC1(data->gpiod_trig)) {
		FUNC3(dev, "failed to get trig-gpios: err=%ld\n",
					FUNC2(data->gpiod_trig));
		return FUNC2(data->gpiod_trig);
	}

	data->gpiod_echo = FUNC4(dev, "echo", GPIOD_IN);
	if (FUNC1(data->gpiod_echo)) {
		FUNC3(dev, "failed to get echo-gpios: err=%ld\n",
					FUNC2(data->gpiod_echo));
		return FUNC2(data->gpiod_echo);
	}

	if (FUNC8(data->gpiod_echo)) {
		FUNC3(data->dev, "cansleep-GPIOs not supported\n");
		return -ENODEV;
	}

	data->irqnr = FUNC9(data->gpiod_echo);
	if (data->irqnr < 0) {
		FUNC3(data->dev, "gpiod_to_irq: %d\n", data->irqnr);
		return data->irqnr;
	}

	ret = FUNC7(dev, data->irqnr, srf04_handle_irq,
			IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
			pdev->name, indio_dev);
	if (ret < 0) {
		FUNC3(data->dev, "request_irq: %d\n", ret);
		return ret;
	}

	FUNC14(pdev, indio_dev);

	indio_dev->name = "srf04";
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->info = &srf04_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = srf04_chan_spec;
	indio_dev->num_channels = FUNC0(srf04_chan_spec);

	return FUNC6(dev, indio_dev);
}