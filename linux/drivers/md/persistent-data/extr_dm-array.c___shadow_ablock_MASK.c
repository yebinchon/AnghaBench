#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dm_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tm; } ;
struct dm_array_info {TYPE_1__ btree_info; } ;
struct array_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  array_validator ; 
 struct array_block* FUNC0 (struct dm_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_array_info*,struct array_block*) ; 

__attribute__((used)) static int FUNC3(struct dm_array_info *info, dm_block_t b,
			   struct dm_block **block, struct array_block **ab)
{
	int inc;
	int r = FUNC1(info->btree_info.tm, b,
				   &array_validator, block, &inc);
	if (r)
		return r;

	*ab = FUNC0(*block);
	if (inc)
		FUNC2(info, *ab);

	return 0;
}