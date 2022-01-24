#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ib_gid_table {int sz; int /*<<< orphan*/  rwlock; TYPE_1__** data_vec; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {struct ib_gid_attr attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ib_gid_attr const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct ib_gid_table* FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

const struct ib_gid_attr *
FUNC7(struct ib_device *device, u8 port_num, int index)
{
	const struct ib_gid_attr *attr = FUNC0(-EINVAL);
	struct ib_gid_table *table;
	unsigned long flags;

	if (!FUNC4(device, port_num))
		return FUNC0(-EINVAL);

	table = FUNC3(device, port_num);
	if (index < 0 || index >= table->sz)
		return FUNC0(-EINVAL);

	FUNC5(&table->rwlock, flags);
	if (!FUNC2(table->data_vec[index]))
		goto done;

	FUNC1(table->data_vec[index]);
	attr = &table->data_vec[index]->attr;
done:
	FUNC6(&table->rwlock, flags);
	return attr;
}