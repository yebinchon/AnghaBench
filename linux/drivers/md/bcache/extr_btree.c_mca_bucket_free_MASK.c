#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* ptr; } ;
struct btree {TYPE_2__* c; int /*<<< orphan*/  list; int /*<<< orphan*/  hash; TYPE_1__ key; } ;
struct TYPE_4__ {int /*<<< orphan*/  btree_cache_freeable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btree*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btree *b)
{
	FUNC0(FUNC1(b));

	b->key.ptr[0] = 0;
	FUNC2(&b->hash);
	FUNC3(&b->list, &b->c->btree_cache_freeable);
}