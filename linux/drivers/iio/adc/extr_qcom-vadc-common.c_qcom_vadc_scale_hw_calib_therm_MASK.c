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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adcmap_100k_104ef_104fb_1875_vref ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vadc_prescale_ratio const*,struct adc5_data const*,int) ; 

__attribute__((used)) static int FUNC3(
				const struct vadc_prescale_ratio *prescale,
				const struct adc5_data *data,
				u16 adc_code, int *result_mdec)
{
	int voltage;

	voltage = FUNC2(adc_code,
				prescale, data, 1000);

	/* Map voltage to temperature from look-up table */
	return FUNC1(adcmap_100k_104ef_104fb_1875_vref,
				 FUNC0(adcmap_100k_104ef_104fb_1875_vref),
				 voltage, result_mdec);
}