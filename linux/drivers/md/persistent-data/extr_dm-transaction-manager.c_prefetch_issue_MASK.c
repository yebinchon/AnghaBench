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
struct prefetch_set {scalar_t__* blocks; int /*<<< orphan*/  lock; } ;
struct dm_block_manager {int dummy; } ;

/* Variables and functions */
 scalar_t__ PREFETCH_SENTINEL ; 
 unsigned int PREFETCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct dm_block_manager*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct prefetch_set *p, struct dm_block_manager *bm)
{
	unsigned i;

	FUNC1(&p->lock);

	for (i = 0; i < PREFETCH_SIZE; i++)
		if (p->blocks[i] != PREFETCH_SENTINEL) {
			FUNC0(bm, p->blocks[i]);
			p->blocks[i] = PREFETCH_SENTINEL;
		}

	FUNC2(&p->lock);
}