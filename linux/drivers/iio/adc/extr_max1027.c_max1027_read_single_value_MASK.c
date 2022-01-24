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
struct max1027_state {int reg; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  spi; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {scalar_t__ type; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ IIO_TEMP ; 
 int IIO_VAL_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX1027_CKS_MODE2 ; 
 int MAX1027_CONV_REG ; 
 int MAX1027_NOSCAN ; 
 int MAX1027_REF_MODE2 ; 
 int MAX1027_SETUP_REG ; 
 int MAX1027_TEMP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct iio_dev*) ; 
 struct max1027_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
				     struct iio_chan_spec const *chan,
				     int *val)
{
	int ret;
	struct max1027_state *st = FUNC5(indio_dev);

	if (FUNC4(indio_dev)) {
		FUNC3(&indio_dev->dev, "trigger mode already enabled");
		return -EBUSY;
	}

	/* Start acquisition on conversion register write */
	st->reg = MAX1027_SETUP_REG | MAX1027_REF_MODE2 | MAX1027_CKS_MODE2;
	ret = FUNC8(st->spi, &st->reg, 1);
	if (ret < 0) {
		FUNC2(&indio_dev->dev,
			"Failed to configure setup register\n");
		return ret;
	}

	/* Configure conversion register with the requested chan */
	st->reg = MAX1027_CONV_REG | FUNC0(chan->channel) |
		  MAX1027_NOSCAN;
	if (chan->type == IIO_TEMP)
		st->reg |= MAX1027_TEMP;
	ret = FUNC8(st->spi, &st->reg, 1);
	if (ret < 0) {
		FUNC2(&indio_dev->dev,
			"Failed to configure conversion register\n");
		return ret;
	}

	/*
	 * For an unknown reason, when we use the mode "10" (write
	 * conversion register), the interrupt doesn't occur every time.
	 * So we just wait 1 ms.
	 */
	FUNC6(1);

	/* Read result */
	ret = FUNC7(st->spi, st->buffer, (chan->type == IIO_TEMP) ? 4 : 2);
	if (ret < 0)
		return ret;

	*val = FUNC1(st->buffer[0]);

	return IIO_VAL_INT;
}