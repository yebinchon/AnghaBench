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
typedef  int /*<<< orphan*/  u32 ;
struct uuid_entry {int /*<<< orphan*/  invalidated; int /*<<< orphan*/  uuid; } ;
struct bcache_device {int id; TYPE_1__* c; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  caching; int /*<<< orphan*/ ** devices; struct uuid_entry* uuids; int /*<<< orphan*/  attached_dev_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCACHE_DEV_DETACHING ; 
 int /*<<< orphan*/  FUNC0 (struct uuid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bcache_device*) ; 
 int /*<<< orphan*/  bch_register_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invalid_uuid ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct bcache_device *d)
{
	FUNC7(&bch_register_lock);

	FUNC1(&d->c->attached_dev_nr);

	if (FUNC9(BCACHE_DEV_DETACHING, &d->flags)) {
		struct uuid_entry *u = d->c->uuids + d->id;

		FUNC0(u, 0);
		FUNC8(u->uuid, invalid_uuid, 16);
		u->invalidated = FUNC5((u32)FUNC6());
		FUNC3(d->c);
	}

	FUNC2(d);

	d->c->devices[d->id] = NULL;
	FUNC4(&d->c->caching);
	d->c = NULL;
}