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
struct dm_cache_metadata {int dummy; } ;
typedef  scalar_t__ dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct dm_cache_metadata*,scalar_t__,int*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct dm_cache_metadata *cmd,
					   dm_cblock_t begin, dm_cblock_t end,
					   bool *result)
{
	int r;
	*result = true;

	while (begin != end) {
		r = FUNC1(cmd, begin, result);
		if (r) {
			FUNC0("block_clean_combined_dirty failed");
			return r;
		}

		if (!*result) {
			FUNC0("cache block %llu is dirty",
			      (unsigned long long) FUNC2(begin));
			return 0;
		}

		begin = FUNC3(FUNC2(begin) + 1);
	}

	return 0;
}