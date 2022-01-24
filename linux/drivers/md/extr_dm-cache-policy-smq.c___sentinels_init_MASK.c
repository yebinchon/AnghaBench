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
struct smq_policy {int /*<<< orphan*/  clean; int /*<<< orphan*/  dirty; } ;
struct entry {unsigned int level; } ;

/* Variables and functions */
 unsigned int NR_CACHE_LEVELS ; 
 struct entry* FUNC0 (struct smq_policy*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct entry*) ; 
 struct entry* FUNC2 (struct smq_policy*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct smq_policy *mq)
{
	unsigned level;
	struct entry *sentinel;

	for (level = 0; level < NR_CACHE_LEVELS; level++) {
		sentinel = FUNC2(mq, level);
		sentinel->level = level;
		FUNC1(&mq->dirty, sentinel);

		sentinel = FUNC0(mq, level);
		sentinel->level = level;
		FUNC1(&mq->clean, sentinel);
	}
}