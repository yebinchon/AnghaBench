#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tiadc_device {TYPE_2__* mfd_tscadc; int /*<<< orphan*/  channels; int /*<<< orphan*/  fifo1_lock; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_6__ {TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FIFO1_THRESHOLD ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  REG_FIFO1THR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 struct iio_dev* FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct tiadc_device* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct iio_dev*) ; 
 TYPE_2__* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  tiadc_buffer_setup_ops ; 
 int FUNC9 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 
 int FUNC12 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tiadc_info ; 
 int /*<<< orphan*/  tiadc_irq_h ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct tiadc_device*) ; 
 int FUNC14 (struct platform_device*,struct tiadc_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  tiadc_worker_h ; 
 int /*<<< orphan*/  FUNC16 (struct tiadc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct iio_dev		*indio_dev;
	struct tiadc_device	*adc_dev;
	struct device_node	*node = pdev->dev.of_node;
	int			err;

	if (!node) {
		FUNC0(&pdev->dev, "Could not find valid DT data.\n");
		return -EINVAL;
	}

	indio_dev = FUNC2(&pdev->dev, sizeof(*adc_dev));
	if (indio_dev == NULL) {
		FUNC0(&pdev->dev, "failed to allocate iio device\n");
		return -ENOMEM;
	}
	adc_dev = FUNC5(indio_dev);

	adc_dev->mfd_tscadc = FUNC8(pdev);
	FUNC13(pdev, adc_dev);

	indio_dev->dev.parent = &pdev->dev;
	indio_dev->name = FUNC1(&pdev->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &tiadc_info;

	FUNC15(indio_dev);
	FUNC16(adc_dev, REG_FIFO1THR, FIFO1_THRESHOLD);
	FUNC6(&adc_dev->fifo1_lock);

	err = FUNC9(indio_dev, adc_dev->channels);
	if (err < 0)
		return err;

	err = FUNC12(indio_dev,
		&tiadc_worker_h,
		&tiadc_irq_h,
		adc_dev->mfd_tscadc->irq,
		IRQF_SHARED,
		&tiadc_buffer_setup_ops);

	if (err)
		goto err_free_channels;

	err = FUNC3(indio_dev);
	if (err)
		goto err_buffer_unregister;

	FUNC7(pdev, indio_dev);

	err = FUNC14(pdev, adc_dev);
	if (err && err == -EPROBE_DEFER)
		goto err_dma;

	return 0;

err_dma:
	FUNC4(indio_dev);
err_buffer_unregister:
	FUNC11(indio_dev);
err_free_channels:
	FUNC10(indio_dev);
	return err;
}