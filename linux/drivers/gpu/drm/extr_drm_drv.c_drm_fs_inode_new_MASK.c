#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct inode* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_fs_cnt ; 
 TYPE_1__* drm_fs_mnt ; 
 int /*<<< orphan*/  drm_fs_type ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *FUNC6(void)
{
	struct inode *inode;
	int r;

	r = FUNC4(&drm_fs_type, &drm_fs_mnt, &drm_fs_cnt);
	if (r < 0) {
		FUNC0("Cannot mount pseudo fs: %d\n", r);
		return FUNC1(r);
	}

	inode = FUNC3(drm_fs_mnt->mnt_sb);
	if (FUNC2(inode))
		FUNC5(&drm_fs_mnt, &drm_fs_cnt);

	return inode;
}