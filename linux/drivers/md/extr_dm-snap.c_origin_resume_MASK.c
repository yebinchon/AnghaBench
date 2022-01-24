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
struct dm_target {struct dm_origin* private; } ;
struct dm_origin {TYPE_1__* dev; int /*<<< orphan*/  split_boundary; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_origin*) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dm_target *ti)
{
	struct dm_origin *o = ti->private;

	o->split_boundary = FUNC2(o->dev->bdev);

	FUNC1(&_origins_lock);
	FUNC0(o);
	FUNC3(&_origins_lock);
}