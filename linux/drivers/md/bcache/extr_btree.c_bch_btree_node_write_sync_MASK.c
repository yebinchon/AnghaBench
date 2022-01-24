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
struct closure {int dummy; } ;
struct btree {int /*<<< orphan*/  write_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree*,struct closure*) ; 
 int /*<<< orphan*/  FUNC1 (struct closure*) ; 
 int /*<<< orphan*/  FUNC2 (struct closure*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct btree *b)
{
	struct closure cl;

	FUNC1(&cl);

	FUNC3(&b->write_lock);
	FUNC0(b, &cl);
	FUNC4(&b->write_lock);

	FUNC2(&cl);
}