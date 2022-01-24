#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct closure {int dummy; } ;
struct btree {TYPE_1__* c; int /*<<< orphan*/  list; int /*<<< orphan*/  key; int /*<<< orphan*/  written; } ;
struct TYPE_5__ {scalar_t__ prio; } ;
struct TYPE_4__ {struct btree* root; int /*<<< orphan*/  bucket_lock; } ;

/* Variables and functions */
 scalar_t__ BTREE_PRIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct closure*) ; 
 int /*<<< orphan*/  FUNC4 (struct closure*) ; 
 int /*<<< orphan*/  FUNC5 (struct closure*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct btree*) ; 

void FUNC10(struct btree *b)
{
	unsigned int i;
	struct closure cl;

	FUNC4(&cl);

	FUNC9(b);

	FUNC0(!b->written);

	for (i = 0; i < FUNC1(&b->key); i++)
		FUNC0(FUNC2(b->c, &b->key, i)->prio != BTREE_PRIO);

	FUNC7(&b->c->bucket_lock);
	FUNC6(&b->list);
	FUNC8(&b->c->bucket_lock);

	b->c->root = b;

	FUNC3(b->c, &cl);
	FUNC5(&cl);
}