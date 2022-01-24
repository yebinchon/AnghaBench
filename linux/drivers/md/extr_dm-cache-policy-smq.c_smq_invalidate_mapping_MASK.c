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
struct smq_policy {int /*<<< orphan*/  cache_alloc; int /*<<< orphan*/  table; } ;
struct entry {int /*<<< orphan*/  allocated; } ;
struct dm_cache_policy {int dummy; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct entry*) ; 
 struct smq_policy* FUNC5 (struct dm_cache_policy*) ; 

__attribute__((used)) static int FUNC6(struct dm_cache_policy *p, dm_cblock_t cblock)
{
	struct smq_policy *mq = FUNC5(p);
	struct entry *e = FUNC3(&mq->cache_alloc, FUNC2(cblock));

	if (!e->allocated)
		return -ENODATA;

	// FIXME: what if this block has pending background work?
	FUNC0(mq, e);
	FUNC4(&mq->table, e);
	FUNC1(&mq->cache_alloc, e);
	return 0;
}