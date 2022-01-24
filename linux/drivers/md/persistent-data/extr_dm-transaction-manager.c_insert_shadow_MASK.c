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
struct shadow_info {int /*<<< orphan*/  hlist; int /*<<< orphan*/  where; } ;
struct dm_transaction_manager {int /*<<< orphan*/  lock; scalar_t__ buckets; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM_HASH_MASK ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct shadow_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dm_transaction_manager *tm, dm_block_t b)
{
	unsigned bucket;
	struct shadow_info *si;

	si = FUNC2(sizeof(*si), GFP_NOIO);
	if (si) {
		si->where = b;
		bucket = FUNC0(b, DM_HASH_MASK);
		FUNC3(&tm->lock);
		FUNC1(&si->hlist, tm->buckets + bucket);
		FUNC4(&tm->lock);
	}
}