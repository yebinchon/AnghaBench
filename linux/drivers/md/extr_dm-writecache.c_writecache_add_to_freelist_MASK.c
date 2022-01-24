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
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct wc_entry {int /*<<< orphan*/  lru; struct rb_node rb_node; } ;
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct dm_writecache {int /*<<< orphan*/  freelist_size; int /*<<< orphan*/  freelist; TYPE_1__ freetree; struct wc_entry* current_free; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rb_node*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct rb_node*,struct rb_node*,struct rb_node**) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct dm_writecache *wc, struct wc_entry *e)
{
	if (FUNC0(wc)) {
		struct rb_node **node = &wc->freetree.rb_node, *parent = NULL;
		if (FUNC4(!*node))
			wc->current_free = e;
		while (*node) {
			parent = *node;
			if (&e->rb_node < *node)
				node = &parent->rb_left;
			else
				node = &parent->rb_right;
		}
		FUNC3(&e->rb_node, parent, node);
		FUNC2(&e->rb_node, &wc->freetree);
	} else {
		FUNC1(&e->lru, &wc->freelist);
	}
	wc->freelist_size++;
}