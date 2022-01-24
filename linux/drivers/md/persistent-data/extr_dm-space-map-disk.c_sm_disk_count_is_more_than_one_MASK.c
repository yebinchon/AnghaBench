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
typedef  int uint32_t ;
struct dm_space_map {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int FUNC0 (struct dm_space_map*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct dm_space_map *sm, dm_block_t b,
					  int *result)
{
	int r;
	uint32_t count;

	r = FUNC0(sm, b, &count);
	if (r)
		return r;

	*result = count > 1;

	return 0;
}