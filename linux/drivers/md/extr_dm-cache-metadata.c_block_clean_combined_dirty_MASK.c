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
struct dm_cache_metadata {int /*<<< orphan*/  root; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 unsigned int M_DIRTY ; 
 unsigned int M_VALID ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct dm_cache_metadata *cmd, dm_cblock_t b,
				      bool *result)
{
	int r;
	__le64 value;
	dm_oblock_t ob;
	unsigned flags;

	r = FUNC0(&cmd->info, cmd->root, FUNC1(b), &value);
	if (r)
		return r;

	FUNC2(value, &ob, &flags);
	*result = !((flags & M_VALID) && (flags & M_DIRTY));

	return 0;
}