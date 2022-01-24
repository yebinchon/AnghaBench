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
typedef  int /*<<< orphan*/  u16 ;
struct vadc_prescale_ratio {int dummy; } ;
struct adc5_data {int dummy; } ;
typedef  enum vadc_scale_fn_type { ____Placeholder_vadc_scale_fn_type } vadc_scale_fn_type ;
struct TYPE_2__ {int (* scale_fn ) (struct vadc_prescale_ratio const*,struct adc5_data const*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int SCALE_HW_CALIB_DEFAULT ; 
 int SCALE_HW_CALIB_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__* scale_adc5_fn ; 
 int FUNC1 (struct vadc_prescale_ratio const*,struct adc5_data const*,int /*<<< orphan*/ ,int*) ; 

int FUNC2(enum vadc_scale_fn_type scaletype,
		    const struct vadc_prescale_ratio *prescale,
		    const struct adc5_data *data,
		    u16 adc_code, int *result)
{
	if (!(scaletype >= SCALE_HW_CALIB_DEFAULT &&
		scaletype < SCALE_HW_CALIB_INVALID)) {
		FUNC0("Invalid scale type %d\n", scaletype);
		return -EINVAL;
	}

	return scale_adc5_fn[scaletype].scale_fn(prescale, data,
					adc_code, result);
}