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
typedef  int /*<<< orphan*/  u16 ;
struct ssi_protocol {scalar_t__ main_state; scalar_t__ txqueue_len; scalar_t__ send_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  txqueue; } ;
struct sk_buff {int len; scalar_t__ data; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int tx_bytes; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct net_device {scalar_t__ tx_queue_len; TYPE_2__ stats; TYPE_1__ dev; } ;
struct hsi_msg {int /*<<< orphan*/  link; int /*<<< orphan*/  complete; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ ACTIVE ; 
 int /*<<< orphan*/  ETH_P_PHONET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ SEND_IDLE ; 
 scalar_t__ SEND_READY ; 
 int SSIP_MIN_PN_HDR ; 
 int /*<<< orphan*/  WAIT4READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct ssi_protocol* FUNC3 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct hsi_msg* FUNC14 (struct ssi_protocol*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssip_tx_data_complete ; 
 struct hsi_client* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct net_device *dev)
{
	struct hsi_client *cl = FUNC16(dev->dev.parent);
	struct ssi_protocol *ssi = FUNC3(cl);
	struct hsi_msg *msg;

	if ((skb->protocol != FUNC6(ETH_P_PHONET)) ||
					(skb->len < SSIP_MIN_PN_HDR))
		goto drop;
	/* Pad to 32-bits - FIXME: Revisit*/
	if ((skb->len & 3) && FUNC11(skb, 4 - (skb->len & 3)))
		goto inc_dropped;

	/*
	 * Modem sends Phonet messages over SSI with its own endianness.
	 * Assume that modem has the same endianness as we do.
	 */
	if (FUNC10(skb, 0))
		goto drop;

	/* length field is exchanged in network byte order */
	((u16 *)skb->data)[2] = FUNC6(((u16 *)skb->data)[2]);

	msg = FUNC14(ssi, skb, GFP_ATOMIC);
	if (!msg) {
		FUNC0(&cl->device, "Dropping tx data: No memory\n");
		goto drop;
	}
	msg->complete = ssip_tx_data_complete;

	FUNC12(&ssi->lock);
	if (FUNC17(ssi->main_state != ACTIVE)) {
		FUNC13(&ssi->lock);
		FUNC0(&cl->device, "Dropping tx data: CMT is OFFLINE\n");
		goto drop2;
	}
	FUNC7(&msg->link, &ssi->txqueue);
	ssi->txqueue_len++;
	if (dev->tx_queue_len < ssi->txqueue_len) {
		FUNC1(&cl->device, "TX queue full %d\n", ssi->txqueue_len);
		FUNC8(dev);
	}
	if (ssi->send_state == SEND_IDLE) {
		FUNC15(ssi, WAIT4READY);
		FUNC13(&ssi->lock);
		FUNC0(&cl->device, "Start TX qlen %d\n", ssi->txqueue_len);
		FUNC5(cl);
	} else if (ssi->send_state == SEND_READY) {
		/* Needed for cmt-speech workaround */
		FUNC0(&cl->device, "Start TX on SEND READY qlen %d\n",
							ssi->txqueue_len);
		FUNC13(&ssi->lock);
		FUNC9(&ssi->work);
	} else {
		FUNC13(&ssi->lock);
	}
	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;

	return 0;
drop2:
	FUNC4(msg);
drop:
	FUNC2(skb);
inc_dropped:
	dev->stats.tx_dropped++;

	return 0;
}