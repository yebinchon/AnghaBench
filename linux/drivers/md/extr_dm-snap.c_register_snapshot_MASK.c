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
struct origin {struct block_device* bdev; int /*<<< orphan*/  snapshots; } ;
struct dm_snapshot {TYPE_1__* origin; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {struct block_device* bdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct origin*) ; 
 int /*<<< orphan*/  FUNC2 (struct origin*,struct dm_snapshot*) ; 
 struct origin* FUNC3 (struct block_device*) ; 
 int FUNC4 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct origin*) ; 
 struct origin* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dm_snapshot *snap)
{
	struct origin *o, *new_o = NULL;
	struct block_device *bdev = snap->origin->bdev;
	int r = 0;

	new_o = FUNC7(sizeof(*new_o), GFP_KERNEL);
	if (!new_o)
		return -ENOMEM;

	FUNC5(&_origins_lock);

	r = FUNC4(snap);
	if (r < 0) {
		FUNC6(new_o);
		goto out;
	}

	o = FUNC3(bdev);
	if (o)
		FUNC6(new_o);
	else {
		/* New origin */
		o = new_o;

		/* Initialise the struct */
		FUNC0(&o->snapshots);
		o->bdev = bdev;

		FUNC1(o);
	}

	FUNC2(o, snap);

out:
	FUNC8(&_origins_lock);

	return r;
}