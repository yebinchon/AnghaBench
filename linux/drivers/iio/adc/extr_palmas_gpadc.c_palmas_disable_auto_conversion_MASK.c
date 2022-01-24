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
struct palmas_gpadc {int /*<<< orphan*/  dev; int /*<<< orphan*/  palmas; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_GPADC_AUTO_CTRL ; 
 int PALMAS_GPADC_AUTO_CTRL_SHUTDOWN_CONV0 ; 
 int PALMAS_GPADC_AUTO_CTRL_SHUTDOWN_CONV1 ; 
 int /*<<< orphan*/  PALMAS_GPADC_BASE ; 
 int /*<<< orphan*/  PALMAS_GPADC_CTRL1 ; 
 int PALMAS_GPADC_CTRL1_GPADC_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct palmas_gpadc *adc)
{
	int ret;

	ret = FUNC1(adc->palmas, PALMAS_GPADC_BASE,
			PALMAS_GPADC_CTRL1,
			PALMAS_GPADC_CTRL1_GPADC_FORCE,
			PALMAS_GPADC_CTRL1_GPADC_FORCE);
	if (ret < 0) {
		FUNC0(adc->dev, "GPADC_CTRL1 update failed: %d\n", ret);
		return ret;
	}

	ret = FUNC1(adc->palmas, PALMAS_GPADC_BASE,
			PALMAS_GPADC_AUTO_CTRL,
			PALMAS_GPADC_AUTO_CTRL_SHUTDOWN_CONV1 |
			PALMAS_GPADC_AUTO_CTRL_SHUTDOWN_CONV0,
			0);
	if (ret < 0) {
		FUNC0(adc->dev, "AUTO_CTRL update failed: %d\n", ret);
		return ret;
	}

	FUNC2(100);

	ret = FUNC1(adc->palmas, PALMAS_GPADC_BASE,
			PALMAS_GPADC_CTRL1,
			PALMAS_GPADC_CTRL1_GPADC_FORCE, 0);
	if (ret < 0)
		FUNC0(adc->dev, "GPADC_CTRL1 update failed: %d\n", ret);

	return ret;
}