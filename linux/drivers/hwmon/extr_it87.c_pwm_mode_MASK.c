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
struct it87_data {scalar_t__ type; int fan_main_ctrl; int* pwm_ctrl; scalar_t__* pwm_duty; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ it8603 ; 
 scalar_t__ FUNC1 (struct it87_data const*,int) ; 

__attribute__((used)) static int FUNC2(const struct it87_data *data, int nr)
{
	if (data->type != it8603 && nr < 3 && !(data->fan_main_ctrl & FUNC0(nr)))
		return 0;				/* Full speed */
	if (data->pwm_ctrl[nr] & 0x80)
		return 2;				/* Automatic mode */
	if ((data->type == it8603 || nr >= 3) &&
	    data->pwm_duty[nr] == FUNC1(data, 0xff))
		return 0;			/* Full speed */

	return 1;				/* Manual mode */
}