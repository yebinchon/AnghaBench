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
struct dm_cache_metadata {int changed; int /*<<< orphan*/  root; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 unsigned int M_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct dm_cache_metadata *cmd, dm_cblock_t cblock, bool dirty)
{
	int r;
	unsigned flags;
	dm_oblock_t oblock;
	__le64 value;

	r = FUNC1(&cmd->info, cmd->root, FUNC3(cblock), &value);
	if (r)
		return r;

	FUNC5(value, &oblock, &flags);

	if (((flags & M_DIRTY) && dirty) || (!(flags & M_DIRTY) && !dirty))
		/* nothing to be done */
		return 0;

	value = FUNC4(oblock, (flags & ~M_DIRTY) | (dirty ? M_DIRTY : 0));
	FUNC0(&value);

	r = FUNC2(&cmd->info, cmd->root, FUNC3(cblock),
			       &value, &cmd->root);
	if (r)
		return r;

	cmd->changed = true;
	return 0;

}