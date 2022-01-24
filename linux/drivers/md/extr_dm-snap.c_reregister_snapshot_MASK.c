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
struct dm_snapshot {int /*<<< orphan*/  list; TYPE_1__* origin; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {struct block_device* bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dm_snapshot *s)
{
	struct block_device *bdev = s->origin->bdev;

	FUNC2(&_origins_lock);

	FUNC3(&s->list);
	FUNC0(FUNC1(bdev), s);

	FUNC4(&_origins_lock);
}