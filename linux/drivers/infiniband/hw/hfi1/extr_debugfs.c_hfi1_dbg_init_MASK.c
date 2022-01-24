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
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  _driver_stats_file_ops ; 
 int /*<<< orphan*/  _driver_stats_names_file_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hfi1_dbg_root ; 

void FUNC2(void)
{
	hfi1_dbg_root  = FUNC0(DRIVER_NAME, NULL);
	FUNC1("driver_stats_names", 0444, hfi1_dbg_root, NULL,
			    &_driver_stats_names_file_ops);
	FUNC1("driver_stats", 0444, hfi1_dbg_root, NULL,
			    &_driver_stats_file_ops);
}