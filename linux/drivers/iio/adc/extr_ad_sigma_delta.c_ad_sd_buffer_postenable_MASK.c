#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {TYPE_1__* channels; int /*<<< orphan*/  masklength; int /*<<< orphan*/  active_scan_mask; } ;
struct ad_sigma_delta {int bus_locked; int keep_cs_asserted; int irq_dis; TYPE_2__* spi; } ;
struct TYPE_4__ {int /*<<< orphan*/  master; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_SD_MODE_CONTINUOUS ; 
 int FUNC0 (struct ad_sigma_delta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ad_sigma_delta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad_sigma_delta* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev)
{
	struct ad_sigma_delta *sigma_delta = FUNC4(indio_dev);
	unsigned int channel;
	int ret;

	ret = FUNC5(indio_dev);
	if (ret < 0)
		return ret;

	channel = FUNC3(indio_dev->active_scan_mask,
				 indio_dev->masklength);
	ret = FUNC0(sigma_delta,
		indio_dev->channels[channel].address);
	if (ret)
		return ret;

	FUNC6(sigma_delta->spi->master);
	sigma_delta->bus_locked = true;
	sigma_delta->keep_cs_asserted = true;

	ret = FUNC1(sigma_delta, AD_SD_MODE_CONTINUOUS);
	if (ret)
		goto err_unlock;

	sigma_delta->irq_dis = false;
	FUNC2(sigma_delta->spi->irq);

	return 0;

err_unlock:
	FUNC7(sigma_delta->spi->master);

	return ret;
}