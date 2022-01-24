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
struct thin_c {struct pool* pool; } ;
struct pool {int /*<<< orphan*/  mapping_pool; int /*<<< orphan*/  pmd; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  cell; int /*<<< orphan*/  bio; scalar_t__ virt_begin; scalar_t__ virt_end; scalar_t__ data_block; struct thin_c* tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thin_c*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_thin_new_mapping*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pool*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct dm_thin_new_mapping *m)
{
	int r;
	struct thin_c *tc = m->tc;
	struct pool *pool = tc->pool;

	/*
	 * The passdown has completed, so now we can decrement all those
	 * unmapped blocks.
	 */
	r = FUNC3(pool->pmd, m->data_block,
				   m->data_block + (m->virt_end - m->virt_begin));
	if (r) {
		FUNC5(pool, "dm_pool_dec_data_range", r);
		FUNC1(m->bio);
	} else
		FUNC0(m->bio);

	FUNC2(tc, m->cell);
	FUNC4(m, &pool->mapping_pool);
}