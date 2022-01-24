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
struct dm_transaction_manager {int /*<<< orphan*/  prefetches; scalar_t__ buckets; int /*<<< orphan*/  lock; struct dm_space_map* sm; struct dm_block_manager* bm; int /*<<< orphan*/ * real; scalar_t__ is_clone; } ;
struct dm_space_map {int dummy; } ;
struct dm_block_manager {int dummy; } ;

/* Variables and functions */
 int DM_HASH_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dm_transaction_manager* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct dm_transaction_manager* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dm_transaction_manager *FUNC5(struct dm_block_manager *bm,
						   struct dm_space_map *sm)
{
	int i;
	struct dm_transaction_manager *tm;

	tm = FUNC2(sizeof(*tm), GFP_KERNEL);
	if (!tm)
		return FUNC0(-ENOMEM);

	tm->is_clone = 0;
	tm->real = NULL;
	tm->bm = bm;
	tm->sm = sm;

	FUNC4(&tm->lock);
	for (i = 0; i < DM_HASH_SIZE; i++)
		FUNC1(tm->buckets + i);

	FUNC3(&tm->prefetches);

	return tm;
}