#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fifo_lo; int /*<<< orphan*/  fifo_hi; int /*<<< orphan*/  sspd; int /*<<< orphan*/  max_rec; int /*<<< orphan*/  uniq_id; } ;
union fwnet_hwaddr {TYPE_2__ uc; } ;
struct net_device {unsigned int mtu; unsigned int max_mtu; int /*<<< orphan*/  dev; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  broadcast; scalar_t__ dev_addr; int /*<<< orphan*/  min_mtu; } ;
struct ieee1394_device_id {int dummy; } ;
struct TYPE_3__ {int offset; } ;
struct fwnet_device {int local_fifo; int /*<<< orphan*/  dev_link; struct fw_card* card; TYPE_1__ handler; struct net_device* netdev; int /*<<< orphan*/  peer_list; scalar_t__ queued_datagrams; scalar_t__ broadcast_xmt_datagramlabel; scalar_t__ broadcast_xmt_max_payload; int /*<<< orphan*/ * broadcast_rcv_context; int /*<<< orphan*/  broadcast_state; int /*<<< orphan*/  lock; } ;
struct fw_unit {int dummy; } ;
struct fw_device {struct fw_card* card; } ;
struct fw_card {int /*<<< orphan*/  device; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  max_receive; int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int /*<<< orphan*/  FWNET_BROADCAST_ERROR ; 
 int FWNET_NO_FIFO_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct fw_device* FUNC6 (struct fw_unit*) ; 
 int FUNC7 (struct fwnet_device*,struct fw_unit*,struct fw_device*) ; 
 struct fwnet_device* FUNC8 (struct fw_card*) ; 
 int /*<<< orphan*/  fwnet_device_list ; 
 int /*<<< orphan*/  fwnet_device_mutex ; 
 int FUNC9 (struct fwnet_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct fwnet_device*) ; 
 int /*<<< orphan*/  fwnet_init_dev ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct fwnet_device* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 

__attribute__((used)) static int FUNC23(struct fw_unit *unit,
		       const struct ieee1394_device_id *id)
{
	struct fw_device *device = FUNC6(unit);
	struct fw_card *card = device->card;
	struct net_device *net;
	bool allocated_netdev = false;
	struct fwnet_device *dev;
	int ret;
	union fwnet_hwaddr *ha;

	FUNC14(&fwnet_device_mutex);

	dev = FUNC8(card);
	if (dev) {
		net = dev->netdev;
		goto have_dev;
	}

	net = FUNC2(sizeof(*dev), "firewire%d", NET_NAME_UNKNOWN,
			   fwnet_init_dev);
	if (net == NULL) {
		FUNC15(&fwnet_device_mutex);
		return -ENOMEM;
	}

	allocated_netdev = true;
	FUNC1(net, card->device);
	dev = FUNC16(net);

	FUNC21(&dev->lock);
	dev->broadcast_state = FWNET_BROADCAST_ERROR;
	dev->broadcast_rcv_context = NULL;
	dev->broadcast_xmt_max_payload = 0;
	dev->broadcast_xmt_datagramlabel = 0;
	dev->local_fifo = FWNET_NO_FIFO_ADDR;
	dev->queued_datagrams = 0;
	FUNC0(&dev->peer_list);
	dev->card = card;
	dev->netdev = net;

	ret = FUNC9(dev);
	if (ret < 0)
		goto out;
	dev->local_fifo = dev->handler.offset;

	/*
	 * default MTU: RFC 2734 cl. 4, RFC 3146 cl. 4
	 * maximum MTU: RFC 2734 cl. 4.2, fragment encapsulation header's
	 *              maximum possible datagram_size + 1 = 0xfff + 1
	 */
	net->mtu = 1500U;
	net->min_mtu = ETH_MIN_MTU;
	net->max_mtu = 4096U;

	/* Set our hardware address while we're at it */
	ha = (union fwnet_hwaddr *)net->dev_addr;
	FUNC19(card->guid, &ha->uc.uniq_id);
	ha->uc.max_rec = dev->card->max_receive;
	ha->uc.sspd = dev->card->link_speed;
	FUNC17(dev->local_fifo >> 32, &ha->uc.fifo_hi);
	FUNC18(dev->local_fifo & 0xffffffff, &ha->uc.fifo_lo);

	FUNC13(net->broadcast, -1, net->addr_len);

	ret = FUNC20(net);
	if (ret)
		goto out;

	FUNC11(&dev->dev_link, &fwnet_device_list);
	FUNC4(&net->dev, "IP over IEEE 1394 on card %s\n",
		   FUNC3(card->device));
 have_dev:
	ret = FUNC7(dev, unit, device);
	if (ret && allocated_netdev) {
		FUNC22(net);
		FUNC12(&dev->dev_link);
 out:
		FUNC10(dev);
		FUNC5(net);
	}

	FUNC15(&fwnet_device_mutex);

	return ret;
}