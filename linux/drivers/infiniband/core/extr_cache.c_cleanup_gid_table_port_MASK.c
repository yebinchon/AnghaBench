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
typedef  int /*<<< orphan*/  u8 ;
struct ib_gid_table {int sz; int /*<<< orphan*/  lock; int /*<<< orphan*/ * data_vec; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct ib_gid_table*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ib_device *ib_dev, u8 port,
				   struct ib_gid_table *table)
{
	int i;
	bool deleted = false;

	if (!table)
		return;

	FUNC3(&table->lock);
	for (i = 0; i < table->sz; ++i) {
		if (FUNC2(table->data_vec[i])) {
			FUNC0(ib_dev, port, table, i);
			deleted = true;
		}
	}
	FUNC4(&table->lock);

	if (deleted)
		FUNC1(ib_dev, port);
}