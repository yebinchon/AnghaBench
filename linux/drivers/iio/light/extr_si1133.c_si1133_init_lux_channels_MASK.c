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
struct si1133_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SI1133_ADCPOST_24BIT_EN ; 
 int FUNC1 (int) ; 
 int SI1133_ADCSENS_HSIG_MASK ; 
 int FUNC2 (int) ; 
 int SI1133_PARAM_ADCMUX_LARGE_WHITE ; 
 int SI1133_PARAM_ADCMUX_MED_IR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int _3_120_0_us ; 
 int _48_8_us ; 
 int FUNC4 (struct si1133_data*,int,int) ; 
 int FUNC5 (struct si1133_data*,int,int) ; 
 int FUNC6 (struct si1133_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct si1133_data *data)
{
	int err;

	err = FUNC4(data, 1,
					FUNC0(1) |
					SI1133_PARAM_ADCMUX_LARGE_WHITE);
	if (err)
		return err;

	err = FUNC6(data, FUNC3(1),
			       SI1133_ADCPOST_24BIT_EN |
			       FUNC1(0));
	if (err)
		return err;
	err = FUNC5(data, 1, SI1133_ADCSENS_HSIG_MASK |
				      FUNC2(64) | _48_8_us);
	if (err)
		return err;

	err = FUNC4(data, 2,
					FUNC0(1) |
					SI1133_PARAM_ADCMUX_LARGE_WHITE);
	if (err)
		return err;

	err = FUNC6(data, FUNC3(2),
			       SI1133_ADCPOST_24BIT_EN |
			       FUNC1(2));
	if (err)
		return err;

	err = FUNC5(data, 2, SI1133_ADCSENS_HSIG_MASK |
				      FUNC2(1) | _3_120_0_us);
	if (err)
		return err;

	err = FUNC4(data, 3,
					FUNC0(1) |
					SI1133_PARAM_ADCMUX_MED_IR);
	if (err)
		return err;

	err = FUNC6(data, FUNC3(3),
			       SI1133_ADCPOST_24BIT_EN |
			       FUNC1(2));
	if (err)
		return err;

	return  FUNC5(data, 3, SI1133_ADCSENS_HSIG_MASK |
					FUNC2(64) | _48_8_us);
}