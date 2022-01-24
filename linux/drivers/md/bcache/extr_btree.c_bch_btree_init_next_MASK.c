#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nsets; } ;
struct btree {scalar_t__ written; TYPE_1__* c; TYPE_2__ keys; scalar_t__ level; } ;
struct TYPE_5__ {int /*<<< orphan*/  sb; int /*<<< orphan*/  sort; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct btree*) ; 
 int /*<<< orphan*/  FUNC5 (struct btree*) ; 

__attribute__((used)) static void FUNC6(struct btree *b)
{
	/* If not a leaf node, always sort */
	if (b->level && b->keys.nsets)
		FUNC1(&b->keys, &b->c->sort);
	else
		FUNC2(&b->keys, &b->c->sort);

	if (b->written < FUNC4(b))
		FUNC0(&b->keys, FUNC5(b),
				   FUNC3(&b->c->sb));

}