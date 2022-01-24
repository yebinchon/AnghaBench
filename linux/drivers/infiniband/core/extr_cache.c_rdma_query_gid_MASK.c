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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct ib_gid_table {int sz; int /*<<< orphan*/  rwlock; TYPE_2__** data_vec; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gid; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (union ib_gid*,int /*<<< orphan*/ *,int) ; 
 struct ib_gid_table* FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct ib_device *device, u8 port_num,
		   int index, union ib_gid *gid)
{
	struct ib_gid_table *table;
	unsigned long flags;
	int res = -EINVAL;

	if (!FUNC3(device, port_num))
		return -EINVAL;

	table = FUNC2(device, port_num);
	FUNC4(&table->rwlock, flags);

	if (index < 0 || index >= table->sz ||
	    !FUNC0(table->data_vec[index]))
		goto done;

	FUNC1(gid, &table->data_vec[index]->attr.gid, sizeof(*gid));
	res = 0;

done:
	FUNC5(&table->rwlock, flags);
	return res;
}