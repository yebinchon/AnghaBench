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
struct matrix_keypad_platform_data {int num_col_gpios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix_keypad_platform_data const*,int,int) ; 

__attribute__((used)) static void FUNC1(const struct matrix_keypad_platform_data *pdata,
			      bool on)
{
	int col;

	for (col = 0; col < pdata->num_col_gpios; col++)
		FUNC0(pdata, col, on);
}