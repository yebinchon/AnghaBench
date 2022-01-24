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
struct dm_target {int dummy; } ;
struct dm_table {unsigned int num_allocated; struct dm_target* targets; int /*<<< orphan*/ * highs; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dm_table *t, unsigned int num)
{
	sector_t *n_highs;
	struct dm_target *n_targets;

	/*
	 * Allocate both the target array and offset array at once.
	 */
	n_highs = (sector_t *) FUNC0(num, sizeof(struct dm_target) +
					  sizeof(sector_t));
	if (!n_highs)
		return -ENOMEM;

	n_targets = (struct dm_target *) (n_highs + num);

	FUNC1(n_highs, -1, sizeof(*n_highs) * num);
	FUNC2(t->highs);

	t->num_allocated = num;
	t->highs = n_highs;
	t->targets = n_targets;

	return 0;
}