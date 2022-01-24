#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {int modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct cpcap_adc {scalar_t__ irq; int /*<<< orphan*/  vendor; int /*<<< orphan*/  reg; TYPE_2__* dev; int /*<<< orphan*/  wq_data_avail; int /*<<< orphan*/  lock; scalar_t__ ato; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int INDIO_BUFFER_SOFTWARE ; 
 int INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 int FUNC1 (struct cpcap_adc*) ; 
 int /*<<< orphan*/  cpcap_adc_channels ; 
 int /*<<< orphan*/  cpcap_adc_id_table ; 
 int /*<<< orphan*/  cpcap_adc_info ; 
 int /*<<< orphan*/  cpcap_adc_irq_thread ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct iio_dev* FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (TYPE_2__*,struct iio_dev*) ; 
 int FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct iio_dev*) ; 
 struct cpcap_adc* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct cpcap_adc *ddata;
	struct iio_dev *indio_dev;
	int error;

	match = FUNC13(FUNC14(cpcap_adc_id_table),
				&pdev->dev);
	if (!match)
		return -EINVAL;

	if (!match->data) {
		FUNC3(&pdev->dev, "no configuration data found\n");

		return -ENODEV;
	}

	indio_dev = FUNC7(&pdev->dev, sizeof(*ddata));
	if (!indio_dev) {
		FUNC3(&pdev->dev, "failed to allocate iio device\n");

		return -ENOMEM;
	}
	ddata = FUNC10(indio_dev);
	ddata->ato = match->data;
	ddata->dev = &pdev->dev;

	FUNC12(&ddata->lock);
	FUNC11(&ddata->wq_data_avail);

	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->channels = cpcap_adc_channels;
	indio_dev->num_channels = FUNC0(cpcap_adc_channels);
	indio_dev->name = FUNC6(&pdev->dev);
	indio_dev->info = &cpcap_adc_info;

	ddata->reg = FUNC4(pdev->dev.parent, NULL);
	if (!ddata->reg)
		return -ENODEV;

	error = FUNC2(ddata->dev, ddata->reg, &ddata->vendor);
	if (error)
		return error;

	FUNC16(pdev, indio_dev);

	ddata->irq = FUNC15(pdev, "adcdone");
	if (ddata->irq < 0)
		return -ENODEV;

	error = FUNC9(&pdev->dev, ddata->irq, NULL,
					  cpcap_adc_irq_thread,
					  IRQF_TRIGGER_NONE,
					  "cpcap-adc", indio_dev);
	if (error) {
		FUNC3(&pdev->dev, "could not get irq: %i\n",
			error);

		return error;
	}

	error = FUNC1(ddata);
	if (error)
		return error;

	FUNC5(&pdev->dev, "CPCAP ADC device probed\n");

	return FUNC8(&pdev->dev, indio_dev);
}