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
struct sun4i_gpadc_iio {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_GPADC_CTRL1 ; 
 int /*<<< orphan*/  SUN4I_GPADC_TPR ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct sun4i_gpadc_iio* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct sun4i_gpadc_iio *info = FUNC1(FUNC0(dev));

	/* Disable the ADC on IP */
	FUNC2(info->regmap, SUN4I_GPADC_CTRL1, 0);
	/* Disable temperature sensor on IP */
	FUNC2(info->regmap, SUN4I_GPADC_TPR, 0);

	return 0;
}