#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ib_gid_table {int /*<<< orphan*/  lock; } ;
struct ib_gid_attr {int index; int /*<<< orphan*/  gid; int /*<<< orphan*/  port_num; struct ib_device* device; } ;
struct TYPE_2__ {int (* query_gid ) (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
struct ib_device {int /*<<< orphan*/  dev; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_gid_table*,struct ib_gid_attr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ib_gid_table* FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ib_device *device,
				     u8 port, int gid_tbl_len)
{
	struct ib_gid_attr gid_attr = {};
	struct ib_gid_table *table;
	int ret = 0;
	int i;

	gid_attr.device = device;
	gid_attr.port_num = port;
	table = FUNC4(device, port);

	FUNC2(&table->lock);
	for (i = 0; i < gid_tbl_len; ++i) {
		if (!device->ops.query_gid)
			continue;
		ret = device->ops.query_gid(device, port, i, &gid_attr.gid);
		if (ret) {
			FUNC1(&device->dev,
				 "query_gid failed (%d) for index %d\n", ret,
				 i);
			goto err;
		}
		gid_attr.index = i;
		FUNC0(table, &gid_attr);
	}
err:
	FUNC3(&table->lock);
	return ret;
}