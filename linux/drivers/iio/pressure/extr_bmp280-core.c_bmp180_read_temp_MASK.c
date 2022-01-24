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
struct bmp280_data {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 int FUNC0 (struct bmp280_data*,int) ; 
 int FUNC1 (struct bmp280_data*,int*) ; 

__attribute__((used)) static int FUNC2(struct bmp280_data *data, int *val)
{
	int ret;
	s32 adc_temp, comp_temp;

	ret = FUNC1(data, &adc_temp);
	if (ret)
		return ret;

	comp_temp = FUNC0(data, adc_temp);

	/*
	 * val might be NULL if we're called by the read_press routine,
	 * who only cares about the carry over t_fine value.
	 */
	if (val) {
		*val = comp_temp * 100;
		return IIO_VAL_INT;
	}

	return 0;
}