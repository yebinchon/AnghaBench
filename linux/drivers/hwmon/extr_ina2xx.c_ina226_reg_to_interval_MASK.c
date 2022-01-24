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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int INA226_TOTAL_CONV_TIME_DEFAULT ; 
 int* ina226_avg_tab ; 

__attribute__((used)) static int FUNC2(u16 config)
{
	int avg = ina226_avg_tab[FUNC1(config)];

	/*
	 * Multiply the total conversion time by the number of averages.
	 * Return the result in milliseconds.
	 */
	return FUNC0(avg * INA226_TOTAL_CONV_TIME_DEFAULT, 1000);
}