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
typedef  int /*<<< orphan*/  u64 ;
struct btree_keys {int page_order; int /*<<< orphan*/  last_set_unwritten; } ;
struct bset_tree {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct btree_keys*,int /*<<< orphan*/ ) ; 
 struct bset_tree* FUNC2 (struct btree_keys*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline size_t FUNC4(struct btree_keys *b)
{
	struct bset_tree *t = FUNC2(b);

	FUNC0((PAGE_SIZE << b->page_order) <
	       (FUNC1(b, t->data) + FUNC3(t->data)));

	if (!b->last_set_unwritten)
		return 0;

	return ((PAGE_SIZE << b->page_order) -
		(FUNC1(b, t->data) + FUNC3(t->data))) /
		sizeof(u64);
}