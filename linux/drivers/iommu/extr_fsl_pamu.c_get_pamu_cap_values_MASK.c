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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ PAMU_PC3 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int max_subwindow_count ; 

__attribute__((used)) static void FUNC2(unsigned long pamu_reg_base)
{
	u32 pc_val;

	pc_val = FUNC1((u32 *)(pamu_reg_base + PAMU_PC3));
	/* Maximum number of subwindows per liodn */
	max_subwindow_count = 1 << (1 + FUNC0(pc_val));
}