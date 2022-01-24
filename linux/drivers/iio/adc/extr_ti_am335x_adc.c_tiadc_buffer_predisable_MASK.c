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
struct tiadc_dma {scalar_t__ chan; } ;
struct tiadc_device {scalar_t__ total_ch_enabled; scalar_t__ buffer_en_ch_steps; int /*<<< orphan*/  mfd_tscadc; struct tiadc_dma dma; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int IRQENB_FIFO1OVRRUN ; 
 int IRQENB_FIFO1THRES ; 
 int IRQENB_FIFO1UNDRFLW ; 
 int /*<<< orphan*/  REG_DMAENABLE_CLEAR ; 
 int /*<<< orphan*/  REG_FIFO1 ; 
 int /*<<< orphan*/  REG_FIFO1CNT ; 
 int /*<<< orphan*/  REG_IRQCLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct tiadc_device* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct tiadc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tiadc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct tiadc_device *adc_dev = FUNC2(indio_dev);
	struct tiadc_dma *dma = &adc_dev->dma;
	int fifo1count, i, read;

	FUNC4(adc_dev, REG_IRQCLR, (IRQENB_FIFO1THRES |
				IRQENB_FIFO1OVRRUN | IRQENB_FIFO1UNDRFLW));
	FUNC0(adc_dev->mfd_tscadc, adc_dev->buffer_en_ch_steps);
	adc_dev->buffer_en_ch_steps = 0;
	adc_dev->total_ch_enabled = 0;
	if (dma->chan) {
		FUNC4(adc_dev, REG_DMAENABLE_CLEAR, 0x2);
		FUNC1(dma->chan);
	}

	/* Flush FIFO of leftover data in the time it takes to disable adc */
	fifo1count = FUNC3(adc_dev, REG_FIFO1CNT);
	for (i = 0; i < fifo1count; i++)
		read = FUNC3(adc_dev, REG_FIFO1);

	return 0;
}