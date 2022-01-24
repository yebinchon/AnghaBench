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
struct matrix_keypad_platform_data {int active_low; int /*<<< orphan*/ * row_gpios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const struct matrix_keypad_platform_data *pdata,
			 int row)
{
	return FUNC0(pdata->row_gpios[row]) ?
			!pdata->active_low : pdata->active_low;
}