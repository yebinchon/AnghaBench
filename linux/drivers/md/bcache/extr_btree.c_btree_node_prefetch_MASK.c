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
struct btree {struct btree* parent; TYPE_1__* c; scalar_t__ level; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bucket_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree*) ; 
 int /*<<< orphan*/  FUNC1 (struct btree*) ; 
 struct btree* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,struct bkey*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,struct btree*) ; 

__attribute__((used)) static void FUNC6(struct btree *parent, struct bkey *k)
{
	struct btree *b;

	FUNC3(&parent->c->bucket_lock);
	b = FUNC2(parent->c, NULL, k, parent->level - 1);
	FUNC4(&parent->c->bucket_lock);

	if (!FUNC0(b)) {
		b->parent = parent;
		FUNC1(b);
		FUNC5(true, b);
	}
}