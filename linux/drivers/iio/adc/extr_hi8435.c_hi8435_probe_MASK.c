#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct hi8435_priv {int* threshold_lo; int* threshold_hi; int /*<<< orphan*/  event_scan_mask; int /*<<< orphan*/  lock; struct spi_device* spi; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  HI8435_CTRL_REG ; 
 int /*<<< orphan*/  HI8435_CTRL_SRST ; 
 int /*<<< orphan*/  HI8435_GOCENHYS_REG ; 
 int /*<<< orphan*/  HI8435_SOCENHYS_REG ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct gpio_desc* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  hi8435_channels ; 
 int /*<<< orphan*/  hi8435_info ; 
 int /*<<< orphan*/  hi8435_trigger_handler ; 
 int /*<<< orphan*/  hi8435_triggered_event_cleanup ; 
 int /*<<< orphan*/  FUNC7 (struct hi8435_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hi8435_priv*,int /*<<< orphan*/ ,int) ; 
 struct hi8435_priv* FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct iio_dev *idev;
	struct hi8435_priv *priv;
	struct gpio_desc *reset_gpio;
	int ret;

	idev = FUNC4(&spi->dev, sizeof(*priv));
	if (!idev)
		return -ENOMEM;

	priv = FUNC9(idev);
	priv->spi = spi;

	reset_gpio = FUNC3(&spi->dev, NULL, GPIOD_OUT_LOW);
	if (FUNC1(reset_gpio)) {
		/* chip s/w reset if h/w reset failed */
		FUNC7(priv, HI8435_CTRL_REG, HI8435_CTRL_SRST);
		FUNC7(priv, HI8435_CTRL_REG, 0);
	} else {
		FUNC14(5);
		FUNC6(reset_gpio, 1);
	}

	FUNC13(spi, idev);
	FUNC11(&priv->lock);

	idev->dev.parent	= &spi->dev;
	idev->dev.of_node	= spi->dev.of_node;
	idev->name		= FUNC12(spi)->name;
	idev->modes		= INDIO_DIRECT_MODE;
	idev->info		= &hi8435_info;
	idev->channels		= hi8435_channels;
	idev->num_channels	= FUNC0(hi8435_channels);

	/* unmask all events */
	priv->event_scan_mask = ~(0);
	/*
	 * There is a restriction in the chip - the hysteresis can not be odd.
	 * If the hysteresis is set to odd value then chip gets into lock state
	 * and not functional anymore.
	 * After chip reset the thresholds are in undefined state, so we need to
	 * initialize thresholds to some initial values and then prevent
	 * userspace setting odd hysteresis.
	 *
	 * Set threshold low voltage to 2V, threshold high voltage to 4V
	 * for both GND-Open and Supply-Open sensing modes.
	 */
	priv->threshold_lo[0] = priv->threshold_lo[1] = 2;
	priv->threshold_hi[0] = priv->threshold_hi[1] = 4;
	FUNC8(priv, HI8435_GOCENHYS_REG, 0x206);
	FUNC8(priv, HI8435_SOCENHYS_REG, 0x206);

	ret = FUNC10(idev, NULL, hi8435_trigger_handler);
	if (ret)
		return ret;

	ret = FUNC2(&spi->dev,
				       hi8435_triggered_event_cleanup,
				       idev);
	if (ret)
		return ret;

	return FUNC5(&spi->dev, idev);
}