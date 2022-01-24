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
struct icc_provider {int /*<<< orphan*/  nodes; } ;
struct icc_node {int /*<<< orphan*/  node_list; struct icc_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  icc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct icc_node *node, struct icc_provider *provider)
{
	FUNC1(&icc_lock);

	node->provider = provider;
	FUNC0(&node->node_list, &provider->nodes);

	FUNC2(&icc_lock);
}