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
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ iommu_debugfs_dir ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	if (!iommu_debugfs_dir) {
		iommu_debugfs_dir = FUNC0("iommu", NULL);
		FUNC1("\n");
		FUNC1("*************************************************************\n");
		FUNC1("**     NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE    **\n");
		FUNC1("**                                                         **\n");
		FUNC1("**  IOMMU DebugFS SUPPORT HAS BEEN ENABLED IN THIS KERNEL  **\n");
		FUNC1("**                                                         **\n");
		FUNC1("** This means that this kernel is built to expose internal **\n");
		FUNC1("** IOMMU data structures, which may compromise security on **\n");
		FUNC1("** your system.                                            **\n");
		FUNC1("**                                                         **\n");
		FUNC1("** If you see this message and you are not debugging the   **\n");
		FUNC1("** kernel, report this immediately to your vendor!         **\n");
		FUNC1("**                                                         **\n");
		FUNC1("**     NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE    **\n");
		FUNC1("*************************************************************\n");
	}
}