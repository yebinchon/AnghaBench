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
struct TYPE_4__ {int nr_levels; } ;
struct smq_policy {TYPE_1__ clean; int /*<<< orphan*/  bg_work; int /*<<< orphan*/  migrations_allowed; } ;
struct policy_work {int /*<<< orphan*/  cblock; int /*<<< orphan*/  oblock; int /*<<< orphan*/  op; } ;
struct entry {int /*<<< orphan*/  oblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLICY_DEMOTE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct policy_work*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smq_policy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct entry*) ; 
 struct entry* FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct smq_policy*,int) ; 

__attribute__((used)) static void FUNC10(struct smq_policy *mq)
{
	int r;
	struct policy_work work;
	struct entry *e;

	if (FUNC0(!mq->migrations_allowed))
		return;

	e = FUNC7(&mq->clean, mq->clean.nr_levels / 2, true);
	if (!e) {
		if (!FUNC2(mq, true))
			FUNC9(mq, false);
		return;
	}

	FUNC5(mq, e);
	FUNC6(&mq->clean, e);

	work.op = POLICY_DEMOTE;
	work.oblock = e->oblock;
	work.cblock = FUNC4(mq, e);
	r = FUNC1(mq->bg_work, &work, NULL);
	if (r) {
		FUNC3(mq, e);
		FUNC8(&mq->clean, e);
	}
}