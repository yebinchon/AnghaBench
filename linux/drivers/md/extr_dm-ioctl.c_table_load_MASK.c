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
struct target_type {int /*<<< orphan*/  name; } ;
struct mapped_device {int dummy; } ;
struct hash_cell {struct dm_table* new_map; struct mapped_device* md; } ;
struct file {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int /*<<< orphan*/  flags; int /*<<< orphan*/  target_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DM_INACTIVE_PRESENT_FLAG ; 
 scalar_t__ DM_TYPE_NONE ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*,struct dm_ioctl*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 struct target_type* FUNC2 (struct mapped_device*) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 struct hash_cell* FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mapped_device*,struct dm_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct mapped_device*) ; 
 int FUNC10 (struct dm_table**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_table*) ; 
 struct target_type* FUNC12 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC15 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct mapped_device* FUNC17 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC18 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct dm_table*,struct dm_ioctl*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
	int r;
	struct hash_cell *hc;
	struct dm_table *t, *old_map = NULL;
	struct mapped_device *md;
	struct target_type *immutable_target_type;

	md = FUNC17(param);
	if (!md)
		return -ENXIO;

	r = FUNC10(&t, FUNC18(param), param->target_count, md);
	if (r)
		goto err;

	/* Protect md->type and md->queue against concurrent table loads. */
	FUNC5(md);
	r = FUNC20(t, param, param_size);
	if (r)
		goto err_unlock_md_type;

	immutable_target_type = FUNC2(md);
	if (immutable_target_type &&
	    (immutable_target_type != FUNC12(t)) &&
	    !FUNC14(t)) {
		FUNC0("can't replace immutable target type %s",
		       immutable_target_type->name);
		r = -EINVAL;
		goto err_unlock_md_type;
	}

	if (FUNC3(md) == DM_TYPE_NONE) {
		/* Initial table load: acquire type of table. */
		FUNC7(md, FUNC13(t));

		/* setup md->queue to reflect md's type (may block) */
		r = FUNC8(md, t);
		if (r) {
			FUNC0("unable to set up device queue for new table.");
			goto err_unlock_md_type;
		}
	} else if (!FUNC19(FUNC3(md), FUNC13(t))) {
		FUNC0("can't change device type (old=%u vs new=%u) after initial table load.",
		       FUNC3(md), FUNC13(t));
		r = -EINVAL;
		goto err_unlock_md_type;
	}

	FUNC15(md);

	/* stage inactive table */
	FUNC16(&_hash_lock);
	hc = FUNC4(md);
	if (!hc || hc->md != md) {
		FUNC0("device has been removed from the dev hash table.");
		FUNC21(&_hash_lock);
		r = -ENXIO;
		goto err_destroy_table;
	}

	if (hc->new_map)
		old_map = hc->new_map;
	hc->new_map = t;
	FUNC21(&_hash_lock);

	param->flags |= DM_INACTIVE_PRESENT_FLAG;
	FUNC1(md, param);

	if (old_map) {
		FUNC9(md);
		FUNC11(old_map);
	}

	FUNC6(md);

	return 0;

err_unlock_md_type:
	FUNC15(md);
err_destroy_table:
	FUNC11(t);
err:
	FUNC6(md);

	return r;
}