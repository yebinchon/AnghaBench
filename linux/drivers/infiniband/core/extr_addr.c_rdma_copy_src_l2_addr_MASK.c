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
struct rdma_dev_addr {int /*<<< orphan*/  bound_dev_if; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  src_dev_addr; int /*<<< orphan*/  dev_type; } ;
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct rdma_dev_addr *dev_addr,
			   const struct net_device *dev)
{
	dev_addr->dev_type = dev->type;
	FUNC0(dev_addr->src_dev_addr, dev->dev_addr, MAX_ADDR_LEN);
	FUNC0(dev_addr->broadcast, dev->broadcast, MAX_ADDR_LEN);
	dev_addr->bound_dev_if = dev->ifindex;
}