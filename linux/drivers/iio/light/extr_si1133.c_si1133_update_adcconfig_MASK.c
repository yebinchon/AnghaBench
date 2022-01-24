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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u8 ;
typedef  int u32 ;
struct si1133_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct si1133_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct si1133_data*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct si1133_data *data, uint8_t adc,
				   u8 mask, u8 shift, u8 value)
{
	u32 adc_config;
	int err;

	err = FUNC2(data, FUNC0(adc),
				 &adc_config);
	if (err)
		return err;

	adc_config &= ~mask;
	adc_config |= (value << shift);

	return FUNC1(data, adc, adc_config);
}