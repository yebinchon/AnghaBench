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
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  PM_OUT_OF_METADATA_SPACE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pool *pool)
{
	int r;
	const char *ooms_reason = NULL;
	dm_block_t nr_free;

	r = FUNC1(pool->pmd, &nr_free);
	if (r)
		ooms_reason = "Could not get free metadata blocks";
	else if (!nr_free)
		ooms_reason = "No free metadata blocks";

	if (ooms_reason && !FUNC2(pool)) {
		FUNC0("%s", ooms_reason);
		FUNC3(pool, PM_OUT_OF_METADATA_SPACE);
	}
}