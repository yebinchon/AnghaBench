#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;
struct continuation {TYPE_1__ ws; } ;
struct batcher {int commit_scheduled; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batcher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct batcher *b, struct continuation *k)
{
	unsigned long flags;
	bool commit_scheduled;

	FUNC2(&b->lock, flags);
	commit_scheduled = b->commit_scheduled;
	FUNC1(&k->ws.entry, &b->work_items);
	FUNC3(&b->lock, flags);

	if (commit_scheduled)
		FUNC0(b);
}