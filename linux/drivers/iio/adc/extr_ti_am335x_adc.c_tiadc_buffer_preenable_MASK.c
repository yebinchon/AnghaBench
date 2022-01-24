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
struct tiadc_device {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int IRQENB_FIFO1OVRRUN ; 
 int IRQENB_FIFO1THRES ; 
 int IRQENB_FIFO1UNDRFLW ; 
 int /*<<< orphan*/  REG_FIFO1 ; 
 int /*<<< orphan*/  REG_FIFO1CNT ; 
 int /*<<< orphan*/  REG_IRQCLR ; 
 struct tiadc_device* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct tiadc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tiadc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct tiadc_device *adc_dev = FUNC0(indio_dev);
	int i, fifo1count, read;

	FUNC2(adc_dev, REG_IRQCLR, (IRQENB_FIFO1THRES |
				IRQENB_FIFO1OVRRUN |
				IRQENB_FIFO1UNDRFLW));

	/* Flush FIFO. Needed in corner cases in simultaneous tsc/adc use */
	fifo1count = FUNC1(adc_dev, REG_FIFO1CNT);
	for (i = 0; i < fifo1count; i++)
		read = FUNC1(adc_dev, REG_FIFO1);

	return 0;
}