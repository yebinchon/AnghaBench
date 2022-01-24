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
struct clone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clone*) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*) ; 
 int /*<<< orphan*/  FUNC3 (struct clone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clone*) ; 

__attribute__((used)) static void FUNC5(struct clone *clone, const char *op, int r)
{
	FUNC0("%s: Metadata operation `%s' failed: error = %d",
	      FUNC4(clone), op, r);

	FUNC1(clone);
	FUNC3(clone, CM_READ_ONLY);

	/*
	 * dm_clone_reload_in_core_bitset() may run concurrently with either
	 * dm_clone_set_region_hydrated() or dm_clone_cond_set_range(), but
	 * it's safe as we have already set the metadata to read-only mode.
	 */
	FUNC2(clone);
}