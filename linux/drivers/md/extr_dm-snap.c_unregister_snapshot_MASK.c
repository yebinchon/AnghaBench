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
struct origin {int /*<<< orphan*/  hash_list; int /*<<< orphan*/  snapshots; } ;
struct dm_snapshot {int /*<<< orphan*/  list; TYPE_1__* origin; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 struct origin* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct origin*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dm_snapshot *s)
{
	struct origin *o;

	FUNC1(&_origins_lock);
	o = FUNC0(s->origin->bdev);

	FUNC3(&s->list);
	if (o && FUNC4(&o->snapshots)) {
		FUNC3(&o->hash_list);
		FUNC2(o);
	}

	FUNC5(&_origins_lock);
}