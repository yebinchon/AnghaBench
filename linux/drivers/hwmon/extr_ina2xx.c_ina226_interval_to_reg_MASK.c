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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  INA226_TOTAL_CONV_TIME_DEFAULT ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ina226_avg_tab ; 

__attribute__((used)) static u16 FUNC4(int interval)
{
	int avg, avg_bits;

	avg = FUNC1(interval * 1000,
				INA226_TOTAL_CONV_TIME_DEFAULT);
	avg_bits = FUNC3(avg, ina226_avg_tab,
				FUNC0(ina226_avg_tab));

	return FUNC2(avg_bits);
}