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
struct closure {int dummy; } ;
struct TYPE_2__ {unsigned int nsets; } ;
struct btree {TYPE_1__ keys; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree*,struct closure*) ; 
 int /*<<< orphan*/  FUNC1 (struct btree*) ; 
 int /*<<< orphan*/  FUNC2 (struct btree*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct btree *b, struct closure *parent)
{
	unsigned int nsets = b->keys.nsets;

	FUNC3(&b->lock);

	FUNC0(b, parent);

	/*
	 * do verify if there was more than one set initially (i.e. we did a
	 * sort) and we sorted down to a single set:
	 */
	if (nsets && !b->keys.nsets)
		FUNC2(b);

	FUNC1(b);
}