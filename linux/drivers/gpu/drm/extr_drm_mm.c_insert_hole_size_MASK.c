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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct rb_root_cached {TYPE_1__ rb_root; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct drm_mm_node {scalar_t__ hole_size; int /*<<< orphan*/  rb_hole_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rb_root_cached*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 scalar_t__ FUNC2 (struct rb_node*) ; 

__attribute__((used)) static void FUNC3(struct rb_root_cached *root,
			     struct drm_mm_node *node)
{
	struct rb_node **link = &root->rb_root.rb_node, *rb = NULL;
	u64 x = node->hole_size;
	bool first = true;

	while (*link) {
		rb = *link;
		if (x > FUNC2(rb)) {
			link = &rb->rb_left;
		} else {
			link = &rb->rb_right;
			first = false;
		}
	}

	FUNC1(&node->rb_hole_size, rb, link);
	FUNC0(&node->rb_hole_size, root, first);
}