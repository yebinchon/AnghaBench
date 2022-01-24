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
struct tiadc_device {TYPE_1__* mfd_tscadc; } ;
struct iio_dev {int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tiadc_device* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static void FUNC3(struct iio_dev *indio_dev)
{
	struct tiadc_device *adc_dev = FUNC2(indio_dev);

	FUNC0(adc_dev->mfd_tscadc->irq, indio_dev);
	FUNC1(indio_dev->buffer);
}