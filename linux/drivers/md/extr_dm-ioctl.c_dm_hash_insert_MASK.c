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
struct hash_cell {int /*<<< orphan*/  uuid_list; int /*<<< orphan*/  md; int /*<<< orphan*/  name_list; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 struct hash_cell* FUNC0 (char const*) ; 
 struct hash_cell* FUNC1 (char const*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 scalar_t__ _name_buckets ; 
 scalar_t__ _uuid_buckets ; 
 struct hash_cell* FUNC2 (char const*,char const*,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  dm_hash_cells_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*,struct hash_cell*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hash_cell*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(const char *name, const char *uuid, struct mapped_device *md)
{
	struct hash_cell *cell, *hc;

	/*
	 * Allocate the new cells.
	 */
	cell = FUNC2(name, uuid, md);
	if (!cell)
		return -ENOMEM;

	/*
	 * Insert the cell into both hash tables.
	 */
	FUNC6(&_hash_lock);
	hc = FUNC0(name);
	if (hc) {
		FUNC4(hc->md);
		goto bad;
	}

	FUNC9(&cell->name_list, _name_buckets + FUNC8(name));

	if (uuid) {
		hc = FUNC1(uuid);
		if (hc) {
			FUNC10(&cell->name_list);
			FUNC4(hc->md);
			goto bad;
		}
		FUNC9(&cell->uuid_list, _uuid_buckets + FUNC8(uuid));
	}
	FUNC3(md);
	FUNC11(&dm_hash_cells_mutex);
	FUNC5(md, cell);
	FUNC12(&dm_hash_cells_mutex);
	FUNC13(&_hash_lock);

	return 0;

 bad:
	FUNC13(&_hash_lock);
	FUNC7(cell);
	return -EBUSY;
}