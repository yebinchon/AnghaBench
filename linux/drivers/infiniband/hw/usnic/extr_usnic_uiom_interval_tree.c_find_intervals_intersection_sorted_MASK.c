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
struct usnic_uiom_interval_node {int /*<<< orphan*/  link; } ;
struct rb_root_cached {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  interval_cmp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*,int /*<<< orphan*/ ) ; 
 struct usnic_uiom_interval_node* FUNC3 (struct rb_root_cached*,unsigned long,unsigned long) ; 
 struct usnic_uiom_interval_node* FUNC4 (struct usnic_uiom_interval_node*,unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct rb_root_cached *root,
				   unsigned long start, unsigned long last,
				   struct list_head *list)
{
	struct usnic_uiom_interval_node *node;

	FUNC0(list);

	for (node = FUNC3(root, start, last);
		node;
		node = FUNC4(node, start, last))
		FUNC1(&node->link, list);

	FUNC2(NULL, list, interval_cmp);
}