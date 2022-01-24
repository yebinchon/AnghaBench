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
struct device {int dummy; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct dht11 {scalar_t__ irq; int num_edges; int /*<<< orphan*/  lock; int /*<<< orphan*/  completion; scalar_t__ timestamp; int /*<<< orphan*/  gpiod; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DHT11_DATA_VALID_TIME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC6 (struct device*,int) ; 
 int FUNC7 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  dht11_chan_spec ; 
 int /*<<< orphan*/  dht11_iio_info ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct dht11* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct dht11 *dht11;
	struct iio_dev *iio;

	iio = FUNC6(dev, sizeof(*dht11));
	if (!iio) {
		FUNC4(dev, "Failed to allocate IIO device\n");
		return -ENOMEM;
	}

	dht11 = FUNC9(iio);
	dht11->dev = dev;
	dht11->gpiod = FUNC5(dev, NULL, GPIOD_IN);
	if (FUNC1(dht11->gpiod))
		return FUNC2(dht11->gpiod);

	dht11->irq = FUNC8(dht11->gpiod);
	if (dht11->irq < 0) {
		FUNC4(dev, "GPIO %d has no interrupt\n", FUNC3(dht11->gpiod));
		return -EINVAL;
	}

	dht11->timestamp = FUNC11() - DHT11_DATA_VALID_TIME - 1;
	dht11->num_edges = -1;

	FUNC13(pdev, iio);

	FUNC10(&dht11->completion);
	FUNC12(&dht11->lock);
	iio->name = pdev->name;
	iio->dev.parent = &pdev->dev;
	iio->info = &dht11_iio_info;
	iio->modes = INDIO_DIRECT_MODE;
	iio->channels = dht11_chan_spec;
	iio->num_channels = FUNC0(dht11_chan_spec);

	return FUNC7(dev, iio);
}