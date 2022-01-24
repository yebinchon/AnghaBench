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
struct inode {int dummy; } ;
struct ib_umad_port {int /*<<< orphan*/  sm_sem; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  port_num; scalar_t__ ib_dev; } ;
struct ib_port_modify {int /*<<< orphan*/  clr_port_cap_mask; } ;
struct file {struct ib_umad_port* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PORT_SM ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_modify*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct ib_umad_port *port = filp->private_data;
	struct ib_port_modify props = {
		.clr_port_cap_mask = IB_PORT_SM
	};
	int ret = 0;

	FUNC1(&port->file_mutex);
	if (port->ib_dev)
		ret = FUNC0(port->ib_dev, port->port_num, 0, &props);
	FUNC2(&port->file_mutex);

	FUNC3(&port->sm_sem);

	return ret;
}