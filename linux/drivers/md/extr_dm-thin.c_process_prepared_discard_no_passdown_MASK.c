#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thin_c {TYPE_2__* pool; int /*<<< orphan*/  td; } ;
struct dm_thin_new_mapping {TYPE_3__* cell; int /*<<< orphan*/  bio; struct thin_c* tc; } ;
struct TYPE_4__ {int /*<<< orphan*/  block_end; int /*<<< orphan*/  block_begin; } ;
struct TYPE_6__ {TYPE_1__ key; } ;
struct TYPE_5__ {int /*<<< orphan*/  mapping_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thin_c*,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_thin_new_mapping*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct dm_thin_new_mapping *m)
{
	int r;
	struct thin_c *tc = m->tc;

	r = FUNC3(tc->td, m->cell->key.block_begin, m->cell->key.block_end);
	if (r) {
		FUNC5(tc->pool, "dm_thin_remove_range", r);
		FUNC1(m->bio);
	} else
		FUNC0(m->bio);

	FUNC2(tc, m->cell);
	FUNC4(m, &tc->pool->mapping_pool);
}