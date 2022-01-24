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

/* Variables and functions */
 int /*<<< orphan*/  DA9055_ADCIN_DIV ; 
 int DA9055_ADC_VSYS ; 
 int /*<<< orphan*/  DA9055_VSYS_DIV ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(int value, int channel)
{
	if (channel == DA9055_ADC_VSYS)
		return FUNC0(value * 1000, DA9055_VSYS_DIV) + 2500;
	else
		return FUNC0(value * 1000, DA9055_ADCIN_DIV);
}