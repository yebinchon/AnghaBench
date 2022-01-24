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

/* Variables and functions */
 int IWPM_MAPINFO_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * iwpm_hash_bucket ; 
 int /*<<< orphan*/  iwpm_mapinfo_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(void)
{
	unsigned long flags;
	int full_bucket = 0, i = 0;

	FUNC1(&iwpm_mapinfo_lock, flags);
	if (iwpm_hash_bucket) {
		for (i = 0; i < IWPM_MAPINFO_HASH_SIZE; i++) {
			if (!FUNC0(&iwpm_hash_bucket[i])) {
				full_bucket = 1;
				break;
			}
		}
	}
	FUNC2(&iwpm_mapinfo_lock, flags);
	return full_bucket;
}