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
typedef  int u32 ;
struct ib_rwq_ind_table_init_attr {int log_ind_tbl_size; TYPE_2__** ind_tbl; } ;
struct ib_rwq_ind_table {int log_ind_tbl_size; TYPE_2__** ind_tbl; int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * uobject; struct ib_device* device; } ;
struct TYPE_3__ {struct ib_rwq_ind_table* (* create_rwq_ind_table ) (struct ib_device*,struct ib_rwq_ind_table_init_attr*,int /*<<< orphan*/ *) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct ib_rwq_ind_table* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_rwq_ind_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_rwq_ind_table* FUNC4 (struct ib_device*,struct ib_rwq_ind_table_init_attr*,int /*<<< orphan*/ *) ; 

struct ib_rwq_ind_table *FUNC5(struct ib_device *device,
						 struct ib_rwq_ind_table_init_attr *init_attr)
{
	struct ib_rwq_ind_table *rwq_ind_table;
	int i;
	u32 table_size;

	if (!device->ops.create_rwq_ind_table)
		return FUNC0(-EOPNOTSUPP);

	table_size = (1 << init_attr->log_ind_tbl_size);
	rwq_ind_table = device->ops.create_rwq_ind_table(device,
							 init_attr, NULL);
	if (FUNC1(rwq_ind_table))
		return rwq_ind_table;

	rwq_ind_table->ind_tbl = init_attr->ind_tbl;
	rwq_ind_table->log_ind_tbl_size = init_attr->log_ind_tbl_size;
	rwq_ind_table->device = device;
	rwq_ind_table->uobject = NULL;
	FUNC3(&rwq_ind_table->usecnt, 0);

	for (i = 0; i < table_size; i++)
		FUNC2(&rwq_ind_table->ind_tbl[i]->usecnt);

	return rwq_ind_table;
}