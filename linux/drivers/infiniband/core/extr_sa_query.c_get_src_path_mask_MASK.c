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
typedef  int u8 ;
struct ib_sa_port {int /*<<< orphan*/  ah_lock; TYPE_1__* sm_ah; } ;
struct ib_sa_device {int start_port; struct ib_sa_port* port; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int src_path_mask; } ;

/* Variables and functions */
 struct ib_sa_device* FUNC0 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sa_client ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u8 FUNC3(struct ib_device *device, u8 port_num)
{
	struct ib_sa_device *sa_dev;
	struct ib_sa_port   *port;
	unsigned long flags;
	u8 src_path_mask;

	sa_dev = FUNC0(device, &sa_client);
	if (!sa_dev)
		return 0x7f;

	port  = &sa_dev->port[port_num - sa_dev->start_port];
	FUNC1(&port->ah_lock, flags);
	src_path_mask = port->sm_ah ? port->sm_ah->src_path_mask : 0x7f;
	FUNC2(&port->ah_lock, flags);

	return src_path_mask;
}