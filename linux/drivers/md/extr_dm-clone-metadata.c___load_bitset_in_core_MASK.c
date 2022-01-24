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
struct dm_clone_metadata {int nr_regions; int /*<<< orphan*/  region_map; int /*<<< orphan*/  bitset_root; int /*<<< orphan*/  bitset_info; } ;
struct dm_bitset_cursor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct dm_bitset_cursor*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_bitset_cursor*) ; 
 scalar_t__ FUNC4 (struct dm_bitset_cursor*) ; 
 int FUNC5 (struct dm_bitset_cursor*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dm_clone_metadata *cmd)
{
	int r;
	unsigned long i;
	struct dm_bitset_cursor c;

	/* Flush bitset cache */
	r = FUNC6(&cmd->bitset_info, cmd->bitset_root, &cmd->bitset_root);
	if (r)
		return r;

	r = FUNC2(&cmd->bitset_info, cmd->bitset_root, cmd->nr_regions, &c);
	if (r)
		return r;

	for (i = 0; ; i++) {
		if (FUNC4(&c))
			FUNC1(i, cmd->region_map);
		else
			FUNC0(i, cmd->region_map);

		if (i >= (cmd->nr_regions - 1))
			break;

		r = FUNC5(&c);

		if (r)
			break;
	}

	FUNC3(&c);

	return r;
}