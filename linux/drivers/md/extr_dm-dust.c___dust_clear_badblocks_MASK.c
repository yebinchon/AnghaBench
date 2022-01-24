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
struct rb_root {int /*<<< orphan*/ * rb_node; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rb_node*,struct rb_root*) ; 
 struct rb_node* FUNC3 (struct rb_root*) ; 
 struct rb_node* FUNC4 (struct rb_node*) ; 

__attribute__((used)) static bool FUNC5(struct rb_root *tree,
				   unsigned long long count)
{
	struct rb_node *node = NULL, *nnode = NULL;

	nnode = FUNC3(tree);
	if (nnode == NULL) {
		FUNC0(count != 0);
		return false;
	}

	while (nnode) {
		node = nnode;
		nnode = FUNC4(node);
		FUNC2(node, tree);
		count--;
		FUNC1(node);
	}
	FUNC0(count != 0);
	FUNC0(tree->rb_node != NULL);

	return true;
}