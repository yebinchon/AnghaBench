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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  firmware_debugfs_root ; 
 int /*<<< orphan*/  fops_zynqmp_pm_dbgfs ; 

void FUNC2(void)
{
	/* Initialize debugfs interface */
	firmware_debugfs_root = FUNC0("zynqmp-firmware", NULL);
	FUNC1("pm", 0660, firmware_debugfs_root, NULL,
			    &fops_zynqmp_pm_dbgfs);
}