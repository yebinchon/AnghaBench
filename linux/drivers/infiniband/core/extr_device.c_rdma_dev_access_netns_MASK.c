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
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdma_net; } ;
struct ib_device {TYPE_1__ coredev; } ;

/* Variables and functions */
 scalar_t__ ib_devices_shared_netns ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct net const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(const struct ib_device *dev, const struct net *net)
{
	return (ib_devices_shared_netns ||
		FUNC0(FUNC1(&dev->coredev.rdma_net), net));
}