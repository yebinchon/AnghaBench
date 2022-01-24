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
struct vadc_prescale_ratio {int den; int /*<<< orphan*/  num; } ;
struct vadc_linear_graph {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vadc_linear_graph const*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC2(const struct vadc_linear_graph *calib_graph,
				const struct vadc_prescale_ratio *prescale,
				bool absolute, u16 adc_code,
				int *result_uv)
{
	s64 voltage = 0, result = 0;

	FUNC1(calib_graph, adc_code, absolute, &voltage);

	voltage = voltage * prescale->den;
	result = FUNC0(voltage, prescale->num);
	*result_uv = result;

	return 0;
}