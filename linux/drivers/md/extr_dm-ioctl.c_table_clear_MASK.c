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
struct hash_cell {struct mapped_device* md; struct dm_table* new_map; } ;
struct file {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DM_INACTIVE_PRESENT_FLAG ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*,struct dm_ioctl*) ; 
 struct hash_cell* FUNC2 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
	struct hash_cell *hc;
	struct mapped_device *md;
	struct dm_table *old_map = NULL;

	FUNC6(&_hash_lock);

	hc = FUNC2(param);
	if (!hc) {
		FUNC0("device doesn't appear to be in the dev hash table.");
		FUNC7(&_hash_lock);
		return -ENXIO;
	}

	if (hc->new_map) {
		old_map = hc->new_map;
		hc->new_map = NULL;
	}

	param->flags &= ~DM_INACTIVE_PRESENT_FLAG;

	FUNC1(hc->md, param);
	md = hc->md;
	FUNC7(&_hash_lock);
	if (old_map) {
		FUNC4(md);
		FUNC5(old_map);
	}
	FUNC3(md);

	return 0;
}