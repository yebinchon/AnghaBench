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
struct net_device {int dummy; } ;
struct fwnet_peer {struct fwnet_device* dev; } ;
struct fwnet_device {int /*<<< orphan*/  dev_link; scalar_t__ queued_datagrams; int /*<<< orphan*/  peer_list; struct net_device* netdev; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct fwnet_peer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  fwnet_device_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct fwnet_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnet_peer*,struct fwnet_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct fw_unit *unit)
{
	struct fwnet_peer *peer = FUNC1(&unit->device);
	struct fwnet_device *dev = peer->dev;
	struct net_device *net;
	int i;

	FUNC7(&fwnet_device_mutex);

	net = dev->netdev;

	FUNC4(peer, dev);

	if (FUNC6(&dev->peer_list)) {
		FUNC10(net);

		FUNC3(dev);

		for (i = 0; dev->queued_datagrams && i < 5; i++)
			FUNC9(1);
		FUNC0(dev->queued_datagrams);
		FUNC5(&dev->dev_link);

		FUNC2(net);
	}

	FUNC8(&fwnet_device_mutex);
}