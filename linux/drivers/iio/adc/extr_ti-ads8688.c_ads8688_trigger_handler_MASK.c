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
typedef  int /*<<< orphan*/  u16 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int masklength; int /*<<< orphan*/  trig; int /*<<< orphan*/  active_scan_mask; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADS8688_MAX_CHANNELS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	u16 buffer[ADS8688_MAX_CHANNELS + sizeof(s64)/sizeof(u16)];
	int i, j = 0;

	for (i = 0; i < indio_dev->masklength; i++) {
		if (!FUNC4(i, indio_dev->active_scan_mask))
			continue;
		buffer[j] = FUNC0(indio_dev, i);
		j++;
	}

	FUNC2(indio_dev, buffer,
			FUNC1(indio_dev));

	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}