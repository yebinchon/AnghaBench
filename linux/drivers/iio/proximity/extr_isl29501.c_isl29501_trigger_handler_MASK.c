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
typedef  int /*<<< orphan*/  u32 ;
struct isl29501_private {int dummy; } ;
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {unsigned long* active_scan_mask; int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ISL29501_DISTANCE_SCAN_INDEX ; 
 int /*<<< orphan*/  REG_DISTANCE ; 
 struct isl29501_private* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isl29501_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long const*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct isl29501_private *isl29501 = FUNC0(indio_dev);
	const unsigned long *active_mask = indio_dev->active_scan_mask;
	u32 buffer[4] = {}; /* 1x16-bit + ts */

	if (FUNC4(ISL29501_DISTANCE_SCAN_INDEX, active_mask))
		FUNC3(isl29501, REG_DISTANCE, buffer);

	FUNC1(indio_dev, buffer, pf->timestamp);
	FUNC2(indio_dev->trig);

	return IRQ_HANDLED;
}