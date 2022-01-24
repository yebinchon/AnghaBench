#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * debugfs_entries; } ;
struct amdgpu_device {TYPE_1__ mman; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttm_debugfs_entries ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
#if defined(CONFIG_DEBUG_FS)
	unsigned i;

	for (i = 0; i < ARRAY_SIZE(ttm_debugfs_entries); i++)
		debugfs_remove(adev->mman.debugfs_entries[i]);
#endif
}