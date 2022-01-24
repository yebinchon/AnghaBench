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
typedef  scalar_t__ uint32_t ;
struct cache_disk_superblock {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ MAX_CACHE_VERSION ; 
 scalar_t__ MIN_CACHE_VERSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cache_disk_superblock *disk_super)
{
	uint32_t metadata_version = FUNC1(disk_super->version);

	if (metadata_version < MIN_CACHE_VERSION || metadata_version > MAX_CACHE_VERSION) {
		FUNC0("Cache metadata version %u found, but only versions between %u and %u supported.",
		      metadata_version, MIN_CACHE_VERSION, MAX_CACHE_VERSION);
		return -EINVAL;
	}

	return 0;
}