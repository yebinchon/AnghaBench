#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct twl4030_madc_platform_data {int irq_line; } ;
struct twl4030_madc_data {int use_second_irq; int /*<<< orphan*/  usb3v1; TYPE_2__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  isr; int /*<<< orphan*/  imr; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_9__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWL4030_BCI_BCICTL1 ; 
 int TWL4030_BCI_MESBAT ; 
 int TWL4030_GPBR1_MADC_HFCLK_EN ; 
 int /*<<< orphan*/  TWL4030_MADC_IMR1 ; 
 int /*<<< orphan*/  TWL4030_MADC_IMR2 ; 
 int /*<<< orphan*/  TWL4030_MADC_ISR1 ; 
 int /*<<< orphan*/  TWL4030_MADC_ISR2 ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTBR ; 
 int /*<<< orphan*/  TWL4030_REG_GPBR1 ; 
 int /*<<< orphan*/  TWL4030_USB_CARKIT_ANA_CTRL ; 
 int TWL4030_USB_SEL_MADC_MCPC ; 
 int /*<<< orphan*/  TWL_MODULE_MAIN_CHARGE ; 
 int /*<<< orphan*/  TWL_MODULE_USB ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct twl4030_madc_platform_data* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct iio_dev* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct twl4030_madc_data*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct twl4030_madc_data* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct device_node*,char*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 struct twl4030_madc_data* twl4030_madc ; 
 int /*<<< orphan*/  twl4030_madc_iio_channels ; 
 int /*<<< orphan*/  twl4030_madc_iio_info ; 
 int FUNC17 (struct twl4030_madc_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct twl4030_madc_data*,int) ; 
 int /*<<< orphan*/  twl4030_madc_threaded_irq_handler ; 
 int FUNC19 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct twl4030_madc_data *madc;
	struct twl4030_madc_platform_data *pdata = FUNC3(&pdev->dev);
	struct device_node *np = pdev->dev.of_node;
	int irq, ret;
	u8 regval;
	struct iio_dev *iio_dev = NULL;

	if (!pdata && !np) {
		FUNC2(&pdev->dev, "neither platform data nor Device Tree node available\n");
		return -EINVAL;
	}

	iio_dev = FUNC6(&pdev->dev, sizeof(*madc));
	if (!iio_dev) {
		FUNC2(&pdev->dev, "failed allocating iio device\n");
		return -ENOMEM;
	}

	madc = FUNC10(iio_dev);
	madc->dev = &pdev->dev;

	iio_dev->name = FUNC5(&pdev->dev);
	iio_dev->dev.parent = &pdev->dev;
	iio_dev->dev.of_node = pdev->dev.of_node;
	iio_dev->info = &twl4030_madc_iio_info;
	iio_dev->modes = INDIO_DIRECT_MODE;
	iio_dev->channels = twl4030_madc_iio_channels;
	iio_dev->num_channels = FUNC0(twl4030_madc_iio_channels);

	/*
	 * Phoenix provides 2 interrupt lines. The first one is connected to
	 * the OMAP. The other one can be connected to the other processor such
	 * as modem. Hence two separate ISR and IMR registers.
	 */
	if (pdata)
		madc->use_second_irq = (pdata->irq_line != 1);
	else
		madc->use_second_irq = FUNC12(np,
				       "ti,system-uses-second-madc-irq");

	madc->imr = madc->use_second_irq ? TWL4030_MADC_IMR2 :
					   TWL4030_MADC_IMR1;
	madc->isr = madc->use_second_irq ? TWL4030_MADC_ISR2 :
					   TWL4030_MADC_ISR1;

	ret = FUNC18(madc, 1);
	if (ret < 0)
		return ret;
	ret = FUNC17(madc, 0, 1);
	if (ret < 0)
		goto err_current_generator;

	ret = FUNC19(TWL_MODULE_MAIN_CHARGE,
			      &regval, TWL4030_BCI_BCICTL1);
	if (ret) {
		FUNC2(&pdev->dev, "unable to read reg BCI CTL1 0x%X\n",
			TWL4030_BCI_BCICTL1);
		goto err_i2c;
	}
	regval |= TWL4030_BCI_MESBAT;
	ret = FUNC20(TWL_MODULE_MAIN_CHARGE,
			       regval, TWL4030_BCI_BCICTL1);
	if (ret) {
		FUNC2(&pdev->dev, "unable to write reg BCI Ctl1 0x%X\n",
			TWL4030_BCI_BCICTL1);
		goto err_i2c;
	}

	/* Check that MADC clock is on */
	ret = FUNC19(TWL4030_MODULE_INTBR, &regval, TWL4030_REG_GPBR1);
	if (ret) {
		FUNC2(&pdev->dev, "unable to read reg GPBR1 0x%X\n",
				TWL4030_REG_GPBR1);
		goto err_i2c;
	}

	/* If MADC clk is not on, turn it on */
	if (!(regval & TWL4030_GPBR1_MADC_HFCLK_EN)) {
		FUNC4(&pdev->dev, "clk disabled, enabling\n");
		regval |= TWL4030_GPBR1_MADC_HFCLK_EN;
		ret = FUNC20(TWL4030_MODULE_INTBR, regval,
				       TWL4030_REG_GPBR1);
		if (ret) {
			FUNC2(&pdev->dev, "unable to write reg GPBR1 0x%X\n",
					TWL4030_REG_GPBR1);
			goto err_i2c;
		}
	}

	FUNC14(pdev, iio_dev);
	FUNC11(&madc->lock);

	irq = FUNC13(pdev, 0);
	ret = FUNC8(&pdev->dev, irq, NULL,
				   twl4030_madc_threaded_irq_handler,
				   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
				   "twl4030_madc", madc);
	if (ret) {
		FUNC2(&pdev->dev, "could not request irq\n");
		goto err_i2c;
	}
	twl4030_madc = madc;

	/* Configure MADC[3:6] */
	ret = FUNC19(TWL_MODULE_USB, &regval,
			TWL4030_USB_CARKIT_ANA_CTRL);
	if (ret) {
		FUNC2(&pdev->dev, "unable to read reg CARKIT_ANA_CTRL  0x%X\n",
				TWL4030_USB_CARKIT_ANA_CTRL);
		goto err_i2c;
	}
	regval |= TWL4030_USB_SEL_MADC_MCPC;
	ret = FUNC20(TWL_MODULE_USB, regval,
				 TWL4030_USB_CARKIT_ANA_CTRL);
	if (ret) {
		FUNC2(&pdev->dev, "unable to write reg CARKIT_ANA_CTRL 0x%X\n",
				TWL4030_USB_CARKIT_ANA_CTRL);
		goto err_i2c;
	}

	/* Enable 3v1 bias regulator for MADC[3:6] */
	madc->usb3v1 = FUNC7(madc->dev, "vusb3v1");
	if (FUNC1(madc->usb3v1)) {
		ret = -ENODEV;
		goto err_i2c;
	}

	ret = FUNC16(madc->usb3v1);
	if (ret) {
		FUNC2(madc->dev, "could not enable 3v1 bias regulator\n");
		goto err_i2c;
	}

	ret = FUNC9(iio_dev);
	if (ret) {
		FUNC2(&pdev->dev, "could not register iio device\n");
		goto err_usb3v1;
	}

	return 0;

err_usb3v1:
	FUNC15(madc->usb3v1);
err_i2c:
	FUNC17(madc, 0, 0);
err_current_generator:
	FUNC18(madc, 0);
	return ret;
}