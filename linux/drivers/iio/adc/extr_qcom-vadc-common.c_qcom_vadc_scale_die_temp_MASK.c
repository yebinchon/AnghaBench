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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct vadc_prescale_ratio {int den; int num; } ;
struct vadc_linear_graph {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 scalar_t__ KELVINMIL_CELSIUSMIL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vadc_linear_graph const*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC2(const struct vadc_linear_graph *calib_graph,
				    const struct vadc_prescale_ratio *prescale,
				    bool absolute,
				    u16 adc_code, int *result_mdec)
{
	s64 voltage = 0;
	u64 temp; /* Temporary variable for do_div */

	FUNC1(calib_graph, adc_code, absolute, &voltage);

	if (voltage > 0) {
		temp = voltage * prescale->den;
		FUNC0(temp, prescale->num * 2);
		voltage = temp;
	} else {
		voltage = 0;
	}

	voltage -= KELVINMIL_CELSIUSMIL;
	*result_mdec = voltage;

	return 0;
}