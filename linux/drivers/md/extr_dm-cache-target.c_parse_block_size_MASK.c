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
struct dm_arg_set {int dummy; } ;
struct cache_args {unsigned long cache_sectors; unsigned long block_size; } ;

/* Variables and functions */
 unsigned long DATA_DEV_BLOCK_SIZE_MAX_SECTORS ; 
 unsigned long DATA_DEV_BLOCK_SIZE_MIN_SECTORS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dm_arg_set*,char**) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_arg_set*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct cache_args *ca, struct dm_arg_set *as,
			    char **error)
{
	unsigned long block_size;

	if (!FUNC0(as, error))
		return -EINVAL;

	if (FUNC2(FUNC1(as), 10, &block_size) || !block_size ||
	    block_size < DATA_DEV_BLOCK_SIZE_MIN_SECTORS ||
	    block_size > DATA_DEV_BLOCK_SIZE_MAX_SECTORS ||
	    block_size & (DATA_DEV_BLOCK_SIZE_MIN_SECTORS - 1)) {
		*error = "Invalid data block size";
		return -EINVAL;
	}

	if (block_size > ca->cache_sectors) {
		*error = "Data block size is larger than the cache device";
		return -EINVAL;
	}

	ca->block_size = block_size;

	return 0;
}