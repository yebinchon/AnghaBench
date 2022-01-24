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
typedef  int /*<<< orphan*/  u16 ;
struct vadc_prescale_ratio {int dummy; } ;
struct adc5_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct vadc_prescale_ratio const*,struct adc5_data const*,int) ; 

__attribute__((used)) static int FUNC1(
				const struct vadc_prescale_ratio *prescale,
				const struct adc5_data *data,
				u16 adc_code, int *result_uv)
{
	*result_uv = FUNC0(adc_code,
				prescale, data, 1);

	return 0;
}