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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u32 ;
struct uuid_entry {int sectors; int /*<<< orphan*/  last_reg; int /*<<< orphan*/  first_reg; int /*<<< orphan*/  label; int /*<<< orphan*/  uuid; } ;
struct cache_set {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SET_RUNNING ; 
 int /*<<< orphan*/  CACHE_SET_STOPPING ; 
 int EINTR ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct uuid_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_set*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cache_set*,struct uuid_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct uuid_entry* FUNC9 (struct cache_set*) ; 

int FUNC10(struct cache_set *c, uint64_t size)
{
	struct uuid_entry *u;

	if (FUNC8(CACHE_SET_STOPPING, &c->flags))
		return -EINTR;

	if (!FUNC8(CACHE_SET_RUNNING, &c->flags))
		return -EPERM;

	u = FUNC9(c);
	if (!u) {
		FUNC7("Can't create volume, no room for UUID");
		return -EINVAL;
	}

	FUNC4(u->uuid, 16);
	FUNC6(u->label, 0, 32);
	u->first_reg = u->last_reg = FUNC2((u32)FUNC5());

	FUNC0(u, 1);
	u->sectors = size >> 9;

	FUNC1(c);

	return FUNC3(c, u);
}