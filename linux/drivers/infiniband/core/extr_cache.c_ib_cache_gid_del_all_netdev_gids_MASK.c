#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ib_gid_table {int sz; int /*<<< orphan*/  lock; TYPE_2__** data_vec; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {struct net_device* ndev; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct ib_gid_table*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ib_gid_table* FUNC5 (struct ib_device*,int /*<<< orphan*/ ) ; 

int FUNC6(struct ib_device *ib_dev, u8 port,
				     struct net_device *ndev)
{
	struct ib_gid_table *table;
	int ix;
	bool deleted = false;

	table = FUNC5(ib_dev, port);

	FUNC3(&table->lock);

	for (ix = 0; ix < table->sz; ix++) {
		if (FUNC2(table->data_vec[ix]) &&
		    table->data_vec[ix]->attr.ndev == ndev) {
			FUNC0(ib_dev, port, table, ix);
			deleted = true;
		}
	}

	FUNC4(&table->lock);

	if (deleted)
		FUNC1(ib_dev, port);

	return 0;
}