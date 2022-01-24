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
struct dm_dev {int /*<<< orphan*/  name; int /*<<< orphan*/ * bdev; int /*<<< orphan*/  mode; } ;
struct table_device {struct dm_dev dm_dev; int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
struct mapped_device {int /*<<< orphan*/  table_devices_lock; int /*<<< orphan*/  table_devices; int /*<<< orphan*/  numa_node_id; } ;
typedef  int /*<<< orphan*/  fmode_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct table_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct table_device*) ; 
 struct table_device* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct table_device*,int /*<<< orphan*/ ,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10(struct mapped_device *md, dev_t dev, fmode_t mode,
			struct dm_dev **result)
{
	int r;
	struct table_device *td;

	FUNC5(&md->table_devices_lock);
	td = FUNC0(&md->table_devices, dev, mode);
	if (!td) {
		td = FUNC3(sizeof(*td), GFP_KERNEL, md->numa_node_id);
		if (!td) {
			FUNC6(&md->table_devices_lock);
			return -ENOMEM;
		}

		td->dm_dev.mode = mode;
		td->dm_dev.bdev = NULL;

		if ((r = FUNC7(td, dev, md))) {
			FUNC6(&md->table_devices_lock);
			FUNC2(td);
			return r;
		}

		FUNC1(td->dm_dev.name, dev);

		FUNC9(&td->count, 1);
		FUNC4(&td->list, &md->table_devices);
	} else {
		FUNC8(&td->count);
	}
	FUNC6(&md->table_devices_lock);

	*result = &td->dm_dev;
	return 0;
}