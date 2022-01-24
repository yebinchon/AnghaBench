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
struct srp_fr_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  free_list; } ;
struct srp_fr_desc {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct srp_fr_pool *pool, struct srp_fr_desc **desc,
			    int n)
{
	unsigned long flags;
	int i;

	FUNC1(&pool->lock, flags);
	for (i = 0; i < n; i++)
		FUNC0(&desc[i]->entry, &pool->free_list);
	FUNC2(&pool->lock, flags);
}