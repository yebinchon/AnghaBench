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
 int /*<<< orphan*/  M_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dm_cache_metadata *cmd,
		    dm_cblock_t cblock, dm_oblock_t oblock)
{
	int r;
	__le64 value = FUNC3(oblock, M_VALID);
	FUNC0(&value);

	r = FUNC1(&cmd->info, cmd->root, FUNC2(cblock),
			       &value, &cmd->root);
	if (r)
		return r;

	cmd->changed = true;
	return 0;
}