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
struct hash_cell {char* name; int /*<<< orphan*/  name_list; } ;

/* Variables and functions */
 scalar_t__ _name_buckets ; 
 int /*<<< orphan*/  dm_hash_cells_mutex ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC5(struct hash_cell *hc, char *new_name)
{
	char *old_name;

	/*
	 * Rename and move the name cell.
	 */
	FUNC2(&hc->name_list);
	old_name = hc->name;

	FUNC3(&dm_hash_cells_mutex);
	hc->name = new_name;
	FUNC4(&dm_hash_cells_mutex);

	FUNC1(&hc->name_list, _name_buckets + FUNC0(new_name));

	return old_name;
}