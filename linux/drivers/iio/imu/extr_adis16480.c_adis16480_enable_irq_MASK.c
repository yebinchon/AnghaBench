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
typedef  int /*<<< orphan*/  uint16_t ;
struct adis {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADIS16480_DRDY_EN_MSK ; 
 int /*<<< orphan*/  ADIS16480_REG_FNCTIO_CTRL ; 
 int FUNC1 (struct adis*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct adis*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct adis *adis, bool enable)
{
	uint16_t val;
	int ret;

	ret = FUNC1(adis, ADIS16480_REG_FNCTIO_CTRL, &val);
	if (ret < 0)
		return ret;

	val &= ~ADIS16480_DRDY_EN_MSK;
	val |= FUNC0(enable);

	return FUNC2(adis, ADIS16480_REG_FNCTIO_CTRL, val);
}