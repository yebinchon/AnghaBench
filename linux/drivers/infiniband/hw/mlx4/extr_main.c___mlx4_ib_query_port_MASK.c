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
typedef  int /*<<< orphan*/  u8 ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*,int) ; 
 scalar_t__ FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct ib_device *ibdev, u8 port,
			 struct ib_port_attr *props, int netw_view)
{
	int err;

	/* props being zeroed by the caller, avoid zeroing it here */

	err = FUNC2(ibdev, port) == IB_LINK_LAYER_INFINIBAND ?
		FUNC1(ibdev, port, props, netw_view) :
				FUNC0(ibdev, port, props);

	return err;
}