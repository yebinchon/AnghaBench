#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dax_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int SLAB_ACCOUNT ; 
 int SLAB_HWCACHE_ALIGN ; 
 int SLAB_MEM_SPREAD ; 
 int SLAB_RECLAIM_ACCOUNT ; 
 int /*<<< orphan*/  dax_cache ; 
 int /*<<< orphan*/  dax_fs_type ; 
 TYPE_1__* dax_mnt ; 
 int /*<<< orphan*/  dax_superblock ; 
 int /*<<< orphan*/  init_once ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	int rc;

	dax_cache = FUNC3("dax_cache", sizeof(struct dax_device), 0,
			(SLAB_HWCACHE_ALIGN|SLAB_RECLAIM_ACCOUNT|
			 SLAB_MEM_SPREAD|SLAB_ACCOUNT),
			init_once);
	if (!dax_cache)
		return -ENOMEM;

	dax_mnt = FUNC2(&dax_fs_type);
	if (FUNC0(dax_mnt)) {
		rc = FUNC1(dax_mnt);
		goto err_mount;
	}
	dax_superblock = dax_mnt->mnt_sb;

	return 0;

 err_mount:
	FUNC4(dax_cache);

	return rc;
}