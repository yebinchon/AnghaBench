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
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int FUNC0 (struct dm_cache_metadata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct dm_cache_metadata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct dm_cache_metadata*) ; 

__attribute__((used)) static int FUNC3(struct dm_cache_metadata *cmd,
					dm_cblock_t begin, dm_cblock_t end,
					bool *result)
{
	if (FUNC2(cmd))
		return FUNC1(cmd, begin, end, result);
	else
		return FUNC0(cmd, begin, end, result);
}