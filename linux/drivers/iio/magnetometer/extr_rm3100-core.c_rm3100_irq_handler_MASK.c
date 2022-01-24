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
struct rm3100_data {int /*<<< orphan*/  drdy_trig; int /*<<< orphan*/  measuring_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {int currentmode; TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
#define  INDIO_BUFFER_TRIGGERED 129 
#define  INDIO_DIRECT_MODE 128 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct rm3100_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	struct iio_dev *indio_dev = d;
	struct rm3100_data *data = FUNC2(indio_dev);

	switch (indio_dev->currentmode) {
	case INDIO_DIRECT_MODE:
		FUNC0(&data->measuring_done);
		break;
	case INDIO_BUFFER_TRIGGERED:
		FUNC3(data->drdy_trig);
		break;
	default:
		FUNC1(indio_dev->dev.parent,
			"device mode out of control, current mode: %d",
			indio_dev->currentmode);
	}

	return IRQ_WAKE_THREAD;
}