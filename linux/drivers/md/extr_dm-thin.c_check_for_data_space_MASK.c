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
struct pool {int /*<<< orphan*/  pmd; } ;
typedef  scalar_t__ dm_block_t ;

/* Variables and functions */
 scalar_t__ PM_OUT_OF_DATA_SPACE ; 
 int /*<<< orphan*/  PM_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pool *pool)
{
	int r;
	dm_block_t nr_free;

	if (FUNC1(pool) != PM_OUT_OF_DATA_SPACE)
		return;

	r = FUNC0(pool->pmd, &nr_free);
	if (r)
		return;

	if (nr_free) {
		FUNC3(pool, PM_WRITE);
		FUNC2(pool);
	}
}