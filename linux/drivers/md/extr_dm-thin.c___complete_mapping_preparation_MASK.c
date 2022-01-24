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
struct pool {int /*<<< orphan*/  prepared_mappings; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  list; int /*<<< orphan*/  prepare_actions; TYPE_1__* tc; } ;
struct TYPE_2__ {struct pool* pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pool*) ; 

__attribute__((used)) static void FUNC3(struct dm_thin_new_mapping *m)
{
	struct pool *pool = m->tc->pool;

	if (FUNC0(&m->prepare_actions)) {
		FUNC1(&m->list, &pool->prepared_mappings);
		FUNC2(pool);
	}
}