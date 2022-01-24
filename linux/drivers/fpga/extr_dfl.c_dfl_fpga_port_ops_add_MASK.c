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
struct dfl_fpga_port_ops {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  dfl_port_ops_list ; 
 int /*<<< orphan*/  dfl_port_ops_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dfl_fpga_port_ops *ops)
{
	FUNC1(&dfl_port_ops_mutex);
	FUNC0(&ops->node, &dfl_port_ops_list);
	FUNC2(&dfl_port_ops_mutex);
}