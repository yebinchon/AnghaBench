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
struct hash_cell {int /*<<< orphan*/  md; struct dm_table* new_map; int /*<<< orphan*/  name_list; int /*<<< orphan*/  uuid_list; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 struct dm_table* FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  dm_hash_cells_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct hash_cell*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dm_table *FUNC9(struct hash_cell *hc)
{
	struct dm_table *table;
	int srcu_idx;

	/* remove from the dev hash */
	FUNC6(&hc->uuid_list);
	FUNC6(&hc->name_list);
	FUNC7(&dm_hash_cells_mutex);
	FUNC3(hc->md, NULL);
	FUNC8(&dm_hash_cells_mutex);

	table = FUNC0(hc->md, &srcu_idx);
	if (table)
		FUNC4(table);
	FUNC2(hc->md, srcu_idx);

	table = NULL;
	if (hc->new_map)
		table = hc->new_map;
	FUNC1(hc->md);
	FUNC5(hc);

	return table;
}