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
struct ib_gid_table_entry {int dummy; } ;
struct ib_gid_table {int /*<<< orphan*/ * data_vec; } ;
struct ib_gid_attr {size_t index; int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct ib_gid_table_entry*) ; 
 struct ib_gid_table_entry* FUNC1 (struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_gid_table*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_gid_table_entry*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_gid_table*,struct ib_gid_table_entry*) ; 

__attribute__((used)) static int FUNC8(struct ib_gid_table *table,
			  const struct ib_gid_attr *attr)
{
	struct ib_gid_table_entry *entry;
	int ret = 0;

	/*
	 * Invalidate any old entry in the table to make it safe to write to
	 * this index.
	 */
	if (FUNC3(table->data_vec[attr->index]))
		FUNC2(attr->device, attr->port_num, table, attr->index);

	/*
	 * Some HCA's report multiple GID entries with only one valid GID, and
	 * leave other unused entries as the zero GID. Convert zero GIDs to
	 * empty table entries instead of storing them.
	 */
	if (FUNC5(&attr->gid))
		return 0;

	entry = FUNC1(attr);
	if (!entry)
		return -ENOMEM;

	if (FUNC6(attr->device, attr->port_num)) {
		ret = FUNC0(entry);
		if (ret)
			goto done;
	}

	FUNC7(table, entry);
	return 0;

done:
	FUNC4(entry);
	return ret;
}