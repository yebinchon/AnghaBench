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
struct pool {struct dm_thin_new_mapping* next_mapping; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/ * bio; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_thin_new_mapping*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dm_thin_new_mapping *FUNC3(struct pool *pool)
{
	struct dm_thin_new_mapping *m = pool->next_mapping;

	FUNC0(!pool->next_mapping);

	FUNC2(m, 0, sizeof(struct dm_thin_new_mapping));
	FUNC1(&m->list);
	m->bio = NULL;

	pool->next_mapping = NULL;

	return m;
}