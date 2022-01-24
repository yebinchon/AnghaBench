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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct tiadc_device {int* data; } ;
struct iio_dev {int scan_bytes; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FIFOREAD_DATA_MASK ; 
 int /*<<< orphan*/  IRQENB_FIFO1THRES ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_FIFO1 ; 
 int /*<<< orphan*/  REG_FIFO1CNT ; 
 int /*<<< orphan*/  REG_IRQENABLE ; 
 int /*<<< orphan*/  REG_IRQSTATUS ; 
 struct tiadc_device* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tiadc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tiadc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct tiadc_device *adc_dev = FUNC0(indio_dev);
	int i, k, fifo1count, read;
	u16 *data = adc_dev->data;

	fifo1count = FUNC2(adc_dev, REG_FIFO1CNT);
	for (k = 0; k < fifo1count; k = k + i) {
		for (i = 0; i < (indio_dev->scan_bytes)/2; i++) {
			read = FUNC2(adc_dev, REG_FIFO1);
			data[i] = read & FIFOREAD_DATA_MASK;
		}
		FUNC1(indio_dev, (u8 *) data);
	}

	FUNC3(adc_dev, REG_IRQSTATUS, IRQENB_FIFO1THRES);
	FUNC3(adc_dev, REG_IRQENABLE, IRQENB_FIFO1THRES);

	return IRQ_HANDLED;
}