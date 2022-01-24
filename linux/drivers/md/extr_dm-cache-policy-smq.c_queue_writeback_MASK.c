#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  nr_levels; } ;
struct smq_policy {TYPE_1__ dirty; int /*<<< orphan*/  bg_work; } ;
struct policy_work {int /*<<< orphan*/  cblock; int /*<<< orphan*/  oblock; int /*<<< orphan*/  op; } ;
struct entry {int /*<<< orphan*/  oblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLICY_WRITEBACK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct policy_work*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct entry*) ; 
 struct entry* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct entry*) ; 

__attribute__((used)) static void FUNC7(struct smq_policy *mq, bool idle)
{
	int r;
	struct policy_work work;
	struct entry *e;

	e = FUNC5(&mq->dirty, mq->dirty.nr_levels, idle);
	if (e) {
		FUNC3(mq, e);
		FUNC4(&mq->dirty, e);

		work.op = POLICY_WRITEBACK;
		work.oblock = e->oblock;
		work.cblock = FUNC2(mq, e);

		r = FUNC0(mq->bg_work, &work, NULL);
		if (r) {
			FUNC1(mq, e);
			FUNC6(&mq->dirty, e);
		}
	}
}