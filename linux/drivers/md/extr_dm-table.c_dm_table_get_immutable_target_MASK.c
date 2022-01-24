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
struct dm_target {int /*<<< orphan*/  type; } ;
struct dm_table {int num_targets; struct dm_target* targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

struct dm_target *FUNC1(struct dm_table *t)
{
	/* Immutable target is implicitly a singleton */
	if (t->num_targets > 1 ||
	    !FUNC0(t->targets[0].type))
		return NULL;

	return t->targets;
}