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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lpc32xx_adc_state {int /*<<< orphan*/  completion; int /*<<< orphan*/  vref; int /*<<< orphan*/  clk; int /*<<< orphan*/  adc_base; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC32XXAD_NAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpc32xx_adc_state*) ; 
 struct lpc32xx_adc_state* FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpc32xx_adc_iio_channels ; 
 int /*<<< orphan*/  lpc32xx_adc_iio_info ; 
 int /*<<< orphan*/  lpc32xx_adc_iio_scale_channels ; 
 int /*<<< orphan*/  lpc32xx_adc_isr ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct lpc32xx_adc_state *st = NULL;
	struct resource *res;
	int retval = -ENODEV;
	struct iio_dev *iodev = NULL;
	int irq;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(&pdev->dev, "failed to get platform I/O memory\n");
		return -ENXIO;
	}

	iodev = FUNC6(&pdev->dev, sizeof(*st));
	if (!iodev)
		return -ENOMEM;

	st = FUNC11(iodev);

	st->adc_base = FUNC8(&pdev->dev, res->start,
				    FUNC16(res));
	if (!st->adc_base) {
		FUNC3(&pdev->dev, "failed mapping memory\n");
		return -EBUSY;
	}

	st->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC1(st->clk)) {
		FUNC3(&pdev->dev, "failed getting clock\n");
		return FUNC2(st->clk);
	}

	irq = FUNC13(pdev, 0);
	if (irq <= 0)
		return -ENXIO;

	retval = FUNC10(&pdev->dev, irq, lpc32xx_adc_isr, 0,
				  LPC32XXAD_NAME, st);
	if (retval < 0) {
		FUNC3(&pdev->dev, "failed requesting interrupt\n");
		return retval;
	}

	st->vref = FUNC9(&pdev->dev, "vref");
	if (FUNC1(st->vref)) {
		iodev->channels = lpc32xx_adc_iio_channels;
		FUNC4(&pdev->dev,
			 "Missing vref regulator: No scaling available\n");
	} else {
		iodev->channels = lpc32xx_adc_iio_scale_channels;
	}

	FUNC15(pdev, iodev);

	FUNC12(&st->completion);

	iodev->name = LPC32XXAD_NAME;
	iodev->dev.parent = &pdev->dev;
	iodev->info = &lpc32xx_adc_iio_info;
	iodev->modes = INDIO_DIRECT_MODE;
	iodev->num_channels = FUNC0(lpc32xx_adc_iio_channels);

	retval = FUNC7(&pdev->dev, iodev);
	if (retval)
		return retval;

	FUNC4(&pdev->dev, "LPC32XX ADC driver loaded, IRQ %d\n", irq);

	return 0;
}