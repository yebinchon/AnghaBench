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
typedef  int /*<<< orphan*/  u32 ;
struct fw_node {int color; int node_id; int port_count; int /*<<< orphan*/  link; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  initiated_reset; int /*<<< orphan*/  phy_speed; int /*<<< orphan*/  link_on; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LOCAL_BUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fw_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ports ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_node*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct fw_node *FUNC8(u32 sid, int port_count, int color)
{
	struct fw_node *node;

	node = FUNC5(FUNC7(node, ports, port_count), GFP_ATOMIC);
	if (node == NULL)
		return NULL;

	node->color = color;
	node->node_id = LOCAL_BUS | FUNC2(sid);
	node->link_on = FUNC1(sid);
	node->phy_speed = FUNC4(sid);
	node->initiated_reset = FUNC3(sid);
	node->port_count = port_count;

	FUNC6(&node->ref_count, 1);
	FUNC0(&node->link);

	return node;
}