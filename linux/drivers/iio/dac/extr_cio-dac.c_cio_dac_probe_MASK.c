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
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct cio_dac_iio {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CIO_DAC_EXTENT ; 
 int /*<<< orphan*/  CIO_DAC_NUM_CHAN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__* base ; 
 int /*<<< orphan*/  cio_dac_channels ; 
 int /*<<< orphan*/  cio_dac_info ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct cio_dac_iio* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, unsigned int id)
{
	struct iio_dev *indio_dev;
	struct cio_dac_iio *priv;
	unsigned int i;

	indio_dev = FUNC2(dev, sizeof(*priv));
	if (!indio_dev)
		return -ENOMEM;

	if (!FUNC4(dev, base[id], CIO_DAC_EXTENT,
		FUNC1(dev))) {
		FUNC0(dev, "Unable to request port addresses (0x%X-0x%X)\n",
			base[id], base[id] + CIO_DAC_EXTENT);
		return -EBUSY;
	}

	indio_dev->info = &cio_dac_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = cio_dac_channels;
	indio_dev->num_channels = CIO_DAC_NUM_CHAN;
	indio_dev->name = FUNC1(dev);
	indio_dev->dev.parent = dev;

	priv = FUNC5(indio_dev);
	priv->base = base[id];

	/* initialize DAC outputs to 0V */
	for (i = 0; i < 32; i += 2)
		FUNC6(0, base[id] + i);

	return FUNC3(dev, indio_dev);
}