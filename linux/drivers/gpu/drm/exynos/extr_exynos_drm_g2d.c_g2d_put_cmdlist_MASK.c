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
struct g2d_data {int /*<<< orphan*/  cmdlist_mutex; int /*<<< orphan*/  free_cmdlist; } ;
struct g2d_cmdlist_node {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct g2d_data *g2d, struct g2d_cmdlist_node *node)
{
	FUNC1(&g2d->cmdlist_mutex);
	FUNC0(&node->list, &g2d->free_cmdlist);
	FUNC2(&g2d->cmdlist_mutex);
}