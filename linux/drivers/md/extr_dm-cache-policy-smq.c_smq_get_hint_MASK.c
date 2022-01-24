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
typedef  int /*<<< orphan*/  uint32_t ;
struct smq_policy {int /*<<< orphan*/  cache_alloc; } ;
struct entry {int /*<<< orphan*/  level; int /*<<< orphan*/  allocated; } ;
struct dm_cache_policy {int dummy; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct smq_policy* FUNC2 (struct dm_cache_policy*) ; 

__attribute__((used)) static uint32_t FUNC3(struct dm_cache_policy *p, dm_cblock_t cblock)
{
	struct smq_policy *mq = FUNC2(p);
	struct entry *e = FUNC1(&mq->cache_alloc, FUNC0(cblock));

	if (!e->allocated)
		return 0;

	return e->level;
}