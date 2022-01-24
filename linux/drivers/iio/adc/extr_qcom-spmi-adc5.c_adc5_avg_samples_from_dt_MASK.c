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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ ADC5_AVG_SAMPLES_MAX ; 
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(u32 value)
{
	if (!FUNC1(value) || value > ADC5_AVG_SAMPLES_MAX)
		return -EINVAL;

	return FUNC0(value);
}