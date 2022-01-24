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
struct file {int dummy; } ;
struct dm_ioctl {int flags; scalar_t__* uuid; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DM_ANY_MINOR ; 
 int DM_INACTIVE_PRESENT_FLAG ; 
 int DM_PERSISTENT_DEV_FLAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*,struct dm_ioctl*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct mapped_device**) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
	int r, m = DM_ANY_MINOR;
	struct mapped_device *md;

	r = FUNC2(param->name);
	if (r)
		return r;

	if (param->flags & DM_PERSISTENT_DEV_FLAG)
		m = FUNC0(FUNC7(param->dev));

	r = FUNC3(m, &md);
	if (r)
		return r;

	r = FUNC5(param->name, *param->uuid ? param->uuid : NULL, md);
	if (r) {
		FUNC6(md);
		FUNC4(md);
		return r;
	}

	param->flags &= ~DM_INACTIVE_PRESENT_FLAG;

	FUNC1(md, param);

	FUNC6(md);

	return 0;
}