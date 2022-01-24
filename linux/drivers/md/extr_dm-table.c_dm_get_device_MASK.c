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
struct dm_target {struct dm_table* table; } ;
struct dm_table {int /*<<< orphan*/  md; int /*<<< orphan*/  devices; } ;
struct dm_dev_internal {struct dm_dev* dm_dev; int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
struct dm_dev {int mode; } ;
typedef  int fmode_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dm_dev**) ; 
 struct dm_dev_internal* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_dev_internal*) ; 
 struct dm_dev_internal* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct dm_dev_internal*,int,int /*<<< orphan*/ ) ; 

int FUNC10(struct dm_target *ti, const char *path, fmode_t mode,
		  struct dm_dev **result)
{
	int r;
	dev_t dev;
	struct dm_dev_internal *dd;
	struct dm_table *t = ti->table;

	FUNC0(!t);

	dev = FUNC1(path);
	if (!dev)
		return -ENODEV;

	dd = FUNC3(&t->devices, dev);
	if (!dd) {
		dd = FUNC5(sizeof(*dd), GFP_KERNEL);
		if (!dd)
			return -ENOMEM;

		if ((r = FUNC2(t->md, dev, mode, &dd->dm_dev))) {
			FUNC4(dd);
			return r;
		}

		FUNC8(&dd->count, 1);
		FUNC6(&dd->list, &t->devices);
		goto out;

	} else if (dd->dm_dev->mode != (mode | dd->dm_dev->mode)) {
		r = FUNC9(dd, mode, t->md);
		if (r)
			return r;
	}
	FUNC7(&dd->count);
out:
	*result = dd->dm_dev;
	return 0;
}