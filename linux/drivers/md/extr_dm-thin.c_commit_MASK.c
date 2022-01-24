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

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PM_OUT_OF_METADATA_SPACE ; 
 int /*<<< orphan*/  FUNC0 (struct pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct pool*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pool*) ; 
 int /*<<< orphan*/  FUNC4 (struct pool*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct pool *pool)
{
	int r;

	if (FUNC3(pool) >= PM_OUT_OF_METADATA_SPACE)
		return -EINVAL;

	r = FUNC2(pool->pmd);
	if (r)
		FUNC4(pool, "dm_pool_commit_metadata", r);
	else {
		FUNC1(pool);
		FUNC0(pool);
	}

	return r;
}