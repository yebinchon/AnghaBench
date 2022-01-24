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
struct z188_adc {struct resource* mem; int /*<<< orphan*/ * base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct mcb_device_id {int dummy; } ;
struct mcb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct resource*) ; 
 int FUNC2 (struct resource*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct z188_adc* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 struct resource* FUNC8 (struct mcb_device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mcb_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  z188_adc_iio_channels ; 
 int /*<<< orphan*/  z188_adc_info ; 

__attribute__((used)) static int FUNC12(struct mcb_device *dev,
			const struct mcb_device_id *id)
{
	struct z188_adc *adc;
	struct iio_dev *indio_dev;
	struct resource *mem;

	indio_dev = FUNC3(&dev->dev, sizeof(struct z188_adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC5(indio_dev);
	indio_dev->name = "z188-adc";
	indio_dev->dev.parent = &dev->dev;
	indio_dev->info = &z188_adc_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = z188_adc_iio_channels;
	indio_dev->num_channels = FUNC0(z188_adc_iio_channels);

	mem = FUNC8(dev, "z188-adc");
	if (FUNC1(mem))
		return FUNC2(mem);

	adc->base = FUNC6(mem->start, FUNC11(mem));
	if (adc->base == NULL)
		goto err;

	FUNC10(adc->base);

	adc->mem = mem;
	FUNC9(dev, indio_dev);

	return FUNC4(indio_dev);

err:
	FUNC7(mem);
	return -ENXIO;
}