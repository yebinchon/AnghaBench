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
typedef  int u8 ;
typedef  int u32 ;
struct si1133_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * coeff_low; int /*<<< orphan*/ * coeff_high; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SI1133_ADC_THRESHOLD ; 
 int /*<<< orphan*/  SI1133_INPUT_FRACTION_HIGH ; 
 int /*<<< orphan*/  SI1133_INPUT_FRACTION_LOW ; 
 int /*<<< orphan*/  SI1133_LUX_ADC_MASK ; 
 int SI1133_LUX_BUFFER_SIZE ; 
 int SI1133_LUX_OUTPUT_FRACTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ lux_coeff ; 
 int FUNC2 (struct si1133_data*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct si1133_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct si1133_data *data, int *val)
{
	int err;
	int lux;
	u32 high_vis;
	u32 low_vis;
	u32 ir;
	u8 buffer[SI1133_LUX_BUFFER_SIZE];

	/* Activate lux channels */
	err = FUNC4(data, SI1133_LUX_ADC_MASK);
	if (err)
		return err;

	err = FUNC2(data, FUNC1(0),
			       SI1133_LUX_BUFFER_SIZE, buffer);
	if (err)
		return err;

	high_vis = (buffer[0] << 16) | (buffer[1] << 8) | buffer[2];
	low_vis = (buffer[3] << 16) | (buffer[4] << 8) | buffer[5];
	ir = (buffer[6] << 16) | (buffer[7] << 8) | buffer[8];

	if (high_vis > SI1133_ADC_THRESHOLD || ir > SI1133_ADC_THRESHOLD)
		lux = FUNC3(high_vis, ir,
					     SI1133_INPUT_FRACTION_HIGH,
					     FUNC0(lux_coeff.coeff_high),
					     &lux_coeff.coeff_high[0]);
	else
		lux = FUNC3(low_vis, ir,
					     SI1133_INPUT_FRACTION_LOW,
					     FUNC0(lux_coeff.coeff_low),
					     &lux_coeff.coeff_low[0]);

	*val = lux >> SI1133_LUX_OUTPUT_FRACTION;

	return err;
}