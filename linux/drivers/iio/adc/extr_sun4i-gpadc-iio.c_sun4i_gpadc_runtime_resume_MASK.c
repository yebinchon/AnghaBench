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
struct sun4i_gpadc_iio {int /*<<< orphan*/  regmap; TYPE_1__* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int tp_mode_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_GPADC_CTRL0 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SUN4I_GPADC_CTRL1 ; 
 int /*<<< orphan*/  SUN4I_GPADC_CTRL3 ; 
 int SUN4I_GPADC_CTRL3_FILTER_EN ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SUN4I_GPADC_TPR ; 
 int SUN4I_GPADC_TPR_TEMP_ENABLE ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct sun4i_gpadc_iio* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct sun4i_gpadc_iio *info = FUNC6(FUNC5(dev));

	/* clkin = 6MHz */
	FUNC7(info->regmap, SUN4I_GPADC_CTRL0,
		     FUNC0(2) |
		     FUNC1(7) |
		     FUNC2(63));
	FUNC7(info->regmap, SUN4I_GPADC_CTRL1, info->data->tp_mode_en);
	FUNC7(info->regmap, SUN4I_GPADC_CTRL3,
		     SUN4I_GPADC_CTRL3_FILTER_EN |
		     FUNC3(1));
	/* period = SUN4I_GPADC_TPR_TEMP_PERIOD * 256 * 16 / clkin; ~0.6s */
	FUNC7(info->regmap, SUN4I_GPADC_TPR,
		     SUN4I_GPADC_TPR_TEMP_ENABLE |
		     FUNC4(800));

	return 0;
}