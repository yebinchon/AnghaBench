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
struct mapped_device {int dummy; } ;
struct dm_ioctl {int flags; } ;

/* Variables and functions */
 int DM_NOFLUSH_FLAG ; 
 int DM_SKIP_LOCKFS_FLAG ; 
 unsigned int DM_SUSPEND_LOCKFS_FLAG ; 
 unsigned int DM_SUSPEND_NOFLUSH_FLAG ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*,struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*) ; 
 int FUNC2 (struct mapped_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*) ; 
 struct mapped_device* FUNC4 (struct dm_ioctl*) ; 

__attribute__((used)) static int FUNC5(struct dm_ioctl *param)
{
	int r = 0;
	unsigned suspend_flags = DM_SUSPEND_LOCKFS_FLAG;
	struct mapped_device *md;

	md = FUNC4(param);
	if (!md)
		return -ENXIO;

	if (param->flags & DM_SKIP_LOCKFS_FLAG)
		suspend_flags &= ~DM_SUSPEND_LOCKFS_FLAG;
	if (param->flags & DM_NOFLUSH_FLAG)
		suspend_flags |= DM_SUSPEND_NOFLUSH_FLAG;

	if (!FUNC3(md)) {
		r = FUNC2(md, suspend_flags);
		if (r)
			goto out;
	}

	FUNC0(md, param);

out:
	FUNC1(md);

	return r;
}