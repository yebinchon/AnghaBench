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
struct dm_table {int dummy; } ;
struct dm_ioctl {int /*<<< orphan*/  event_nr; } ;

/* Variables and functions */
 int ENXIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*,struct dm_ioctl*) ; 
 struct dm_table* FUNC1 (struct mapped_device*,struct dm_ioctl*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*,int) ; 
 scalar_t__ FUNC4 (struct mapped_device*,int /*<<< orphan*/ ) ; 
 struct mapped_device* FUNC5 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_table*,struct dm_ioctl*,size_t) ; 

__attribute__((used)) static int FUNC7(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
	int r = 0;
	struct mapped_device *md;
	struct dm_table *table;
	int srcu_idx;

	md = FUNC5(param);
	if (!md)
		return -ENXIO;

	/*
	 * Wait for a notification event
	 */
	if (FUNC4(md, param->event_nr)) {
		r = -ERESTARTSYS;
		goto out;
	}

	/*
	 * The userland program is going to want to know what
	 * changed to trigger the event, so we may as well tell
	 * him and save an ioctl.
	 */
	FUNC0(md, param);

	table = FUNC1(md, param, &srcu_idx);
	if (table)
		FUNC6(table, param, param_size);
	FUNC3(md, srcu_idx);

out:
	FUNC2(md);

	return r;
}