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
struct smq_policy {struct queue dirty; } ;
struct entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct queue*,struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct queue*,struct entry*) ; 
 struct entry* FUNC2 (struct smq_policy*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct smq_policy *mq)
{
	unsigned level;
	struct queue *q = &mq->dirty;
	struct entry *sentinel;

	for (level = 0; level < q->nr_levels; level++) {
		sentinel = FUNC2(mq, level);
		FUNC0(q, sentinel);
		FUNC1(q, sentinel);
	}
}