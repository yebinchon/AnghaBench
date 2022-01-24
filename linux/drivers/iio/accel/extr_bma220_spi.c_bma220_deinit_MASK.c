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
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMA220_REG_SUSPEND ; 
 int BMA220_SUSPEND_SLEEP ; 
 int FUNC0 (struct spi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct spi_device *spi)
{
	int ret;

	/* Make sure the chip is powered off */
	ret = FUNC0(spi, BMA220_REG_SUSPEND);
	if (ret < 0)
		return ret;
	else if (ret == BMA220_SUSPEND_SLEEP)
		return FUNC0(spi, BMA220_REG_SUSPEND);

	return 0;
}