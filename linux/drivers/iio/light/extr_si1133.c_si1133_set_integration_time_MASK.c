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
typedef  size_t u8 ;
struct si1133_data {int* adc_sens; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct si1133_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct si1133_data *data, u8 adc,
				       int milliseconds, int nanoseconds)
{
	int index;

	index = FUNC1(milliseconds, nanoseconds);
	if (index < 0)
		return index;

	data->adc_sens[adc] &= 0xF0;
	data->adc_sens[adc] |= index;

	return FUNC2(data, FUNC0(0),
				data->adc_sens[adc]);
}