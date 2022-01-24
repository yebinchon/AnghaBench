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
struct queue {unsigned int nr_levels; } ;
struct smq_policy {struct queue clean; } ;
struct entry {int dummy; } ;

/* Variables and functions */
 struct entry* FUNC0 (struct smq_policy*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct queue*,struct entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct queue*,struct entry*) ; 

__attribute__((used)) static void FUNC3(struct smq_policy *mq)
{
	unsigned level;
	struct queue *q = &mq->clean;
	struct entry *sentinel;

	for (level = 0; level < q->nr_levels; level++) {
		sentinel = FUNC0(mq, level);
		FUNC1(q, sentinel);
		FUNC2(q, sentinel);
	}
}