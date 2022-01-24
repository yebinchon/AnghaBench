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
struct iio_dev {int dummy; } ;
struct ad_sigma_delta {int irq_dis; int keep_cs_asserted; int bus_locked; TYPE_1__* spi; int /*<<< orphan*/  completion; } ;
struct TYPE_2__ {int /*<<< orphan*/  master; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_SD_MODE_IDLE ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ad_sigma_delta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ad_sigma_delta* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct ad_sigma_delta *sigma_delta = FUNC2(indio_dev);

	FUNC3(&sigma_delta->completion);
	FUNC5(&sigma_delta->completion, HZ);

	if (!sigma_delta->irq_dis) {
		FUNC1(sigma_delta->spi->irq);
		sigma_delta->irq_dis = true;
	}

	sigma_delta->keep_cs_asserted = false;
	FUNC0(sigma_delta, AD_SD_MODE_IDLE);

	sigma_delta->bus_locked = false;
	return FUNC4(sigma_delta->spi->master);
}