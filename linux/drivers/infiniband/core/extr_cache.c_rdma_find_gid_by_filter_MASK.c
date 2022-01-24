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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
typedef  struct ib_gid_attr {int /*<<< orphan*/  gid; } const ib_gid_attr ;
struct ib_gid_table_entry {struct ib_gid_attr const attr; } ;
struct ib_gid_table {unsigned int sz; int /*<<< orphan*/  rwlock; struct ib_gid_table_entry** data_vec; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct ib_gid_attr const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_gid_table_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_gid_table_entry*) ; 
 scalar_t__ FUNC3 (union ib_gid const*,int /*<<< orphan*/ *,int) ; 
 struct ib_gid_table* FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

const struct ib_gid_attr *FUNC8(
	struct ib_device *ib_dev, const union ib_gid *gid, u8 port,
	bool (*filter)(const union ib_gid *gid, const struct ib_gid_attr *,
		       void *),
	void *context)
{
	const struct ib_gid_attr *res = FUNC0(-ENOENT);
	struct ib_gid_table *table;
	unsigned long flags;
	unsigned int i;

	if (!FUNC5(ib_dev, port))
		return FUNC0(-EINVAL);

	table = FUNC4(ib_dev, port);

	FUNC6(&table->rwlock, flags);
	for (i = 0; i < table->sz; i++) {
		struct ib_gid_table_entry *entry = table->data_vec[i];

		if (!FUNC2(entry))
			continue;

		if (FUNC3(gid, &entry->attr.gid, sizeof(*gid)))
			continue;

		if (filter(gid, &entry->attr, context)) {
			FUNC1(entry);
			res = &entry->attr;
			break;
		}
	}
	FUNC7(&table->rwlock, flags);
	return res;
}