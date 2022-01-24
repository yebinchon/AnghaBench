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
struct xadc {int /*<<< orphan*/  data; int /*<<< orphan*/  clk; int /*<<< orphan*/  zynq_unmask_work; int /*<<< orphan*/  irq; int /*<<< orphan*/  convst_trigger; int /*<<< orphan*/  samplerate_trigger; TYPE_1__* ops; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  channels; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int XADC_FLAGS_BUFFERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct xadc* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC8 (struct platform_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC8(pdev);
	struct xadc *xadc = FUNC4(indio_dev);

	FUNC3(indio_dev);
	if (xadc->ops->flags & XADC_FLAGS_BUFFERED) {
		FUNC5(xadc->samplerate_trigger);
		FUNC5(xadc->convst_trigger);
		FUNC6(indio_dev);
	}
	FUNC2(xadc->irq, indio_dev);
	FUNC0(&xadc->zynq_unmask_work);
	FUNC1(xadc->clk);
	FUNC7(xadc->data);
	FUNC7(indio_dev->channels);

	return 0;
}