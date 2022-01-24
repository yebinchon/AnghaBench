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
struct sc27xx_adc_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sc27xx_adc_data*,int,int,int) ; 
 int FUNC1 (struct sc27xx_adc_data*,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct sc27xx_adc_data *data,
				     int channel, int scale, int *val)
{
	int ret, raw_adc;

	ret = FUNC1(data, channel, scale, &raw_adc);
	if (ret)
		return ret;

	*val = FUNC0(data, channel, scale, raw_adc);
	return 0;
}