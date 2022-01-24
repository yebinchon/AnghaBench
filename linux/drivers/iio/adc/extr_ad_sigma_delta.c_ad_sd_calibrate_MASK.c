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
struct ad_sigma_delta {int bus_locked; int keep_cs_asserted; int irq_dis; TYPE_1__* spi; int /*<<< orphan*/  completion; } ;
struct TYPE_2__ {int /*<<< orphan*/  master; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int AD_SD_MODE_IDLE ; 
 int EIO ; 
 int HZ ; 
 int FUNC0 (struct ad_sigma_delta*,unsigned int) ; 
 int FUNC1 (struct ad_sigma_delta*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct ad_sigma_delta *sigma_delta,
	unsigned int mode, unsigned int channel)
{
	int ret;
	unsigned long timeout;

	ret = FUNC0(sigma_delta, channel);
	if (ret)
		return ret;

	FUNC5(sigma_delta->spi->master);
	sigma_delta->bus_locked = true;
	sigma_delta->keep_cs_asserted = true;
	FUNC4(&sigma_delta->completion);

	ret = FUNC1(sigma_delta, mode);
	if (ret < 0)
		goto out;

	sigma_delta->irq_dis = false;
	FUNC3(sigma_delta->spi->irq);
	timeout = FUNC7(&sigma_delta->completion, 2 * HZ);
	if (timeout == 0) {
		sigma_delta->irq_dis = true;
		FUNC2(sigma_delta->spi->irq);
		ret = -EIO;
	} else {
		ret = 0;
	}
out:
	sigma_delta->keep_cs_asserted = false;
	FUNC1(sigma_delta, AD_SD_MODE_IDLE);
	sigma_delta->bus_locked = false;
	FUNC6(sigma_delta->spi->master);

	return ret;
}