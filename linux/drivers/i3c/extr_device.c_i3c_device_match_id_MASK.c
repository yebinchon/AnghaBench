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
typedef  scalar_t__ u16 ;
struct i3c_device_info {scalar_t__ dcr; int /*<<< orphan*/  pid; } ;
struct i3c_device_id {int match_flags; scalar_t__ manuf_id; scalar_t__ part_id; scalar_t__ extra_info; scalar_t__ dcr; } ;
struct i3c_device {int dummy; } ;

/* Variables and functions */
 int I3C_MATCH_DCR ; 
 int I3C_MATCH_EXTRA_INFO ; 
 int I3C_MATCH_MANUF_AND_PART ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i3c_device*,struct i3c_device_info*) ; 

const struct i3c_device_id *
FUNC5(struct i3c_device *i3cdev,
		    const struct i3c_device_id *id_table)
{
	struct i3c_device_info devinfo;
	const struct i3c_device_id *id;

	FUNC4(i3cdev, &devinfo);

	/*
	 * The lower 32bits of the provisional ID is just filled with a random
	 * value, try to match using DCR info.
	 */
	if (!FUNC3(devinfo.pid)) {
		u16 manuf = FUNC1(devinfo.pid);
		u16 part = FUNC2(devinfo.pid);
		u16 ext_info = FUNC0(devinfo.pid);

		/* First try to match by manufacturer/part ID. */
		for (id = id_table; id->match_flags != 0; id++) {
			if ((id->match_flags & I3C_MATCH_MANUF_AND_PART) !=
			    I3C_MATCH_MANUF_AND_PART)
				continue;

			if (manuf != id->manuf_id || part != id->part_id)
				continue;

			if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
			    ext_info != id->extra_info)
				continue;

			return id;
		}
	}

	/* Fallback to DCR match. */
	for (id = id_table; id->match_flags != 0; id++) {
		if ((id->match_flags & I3C_MATCH_DCR) &&
		    id->dcr == devinfo.dcr)
			return id;
	}

	return NULL;
}