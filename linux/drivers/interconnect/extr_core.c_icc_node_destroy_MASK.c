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
struct icc_node {int /*<<< orphan*/  req_list; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  icc_idr ; 
 int /*<<< orphan*/  icc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct icc_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct icc_node* FUNC6 (int) ; 

void FUNC7(int id)
{
	struct icc_node *node;

	FUNC4(&icc_lock);

	node = FUNC6(id);
	if (node) {
		FUNC2(&icc_idr, node->id);
		FUNC0(!FUNC1(&node->req_list));
	}

	FUNC5(&icc_lock);

	FUNC3(node);
}