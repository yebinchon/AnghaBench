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
struct sis_ts_data {scalar_t__ reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct sis_ts_data *ts)
{
	if (ts->reset_gpio) {
		/* Get out of reset */
		FUNC2(1000, 2000);
		FUNC0(ts->reset_gpio, 1);
		FUNC2(1000, 2000);
		FUNC0(ts->reset_gpio, 0);
		FUNC1(100);
	}
}