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
typedef  int /*<<< orphan*/  u32 ;
struct ssi_protocol {scalar_t__ main_state; scalar_t__ rxid; int /*<<< orphan*/  netdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  send_state; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct hsi_msg {int /*<<< orphan*/  complete; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ ACTIVE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RECEIVING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*,struct hsi_msg*) ; 
 struct ssi_protocol* FUNC6 (struct hsi_client*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct hsi_msg* FUNC11 (struct ssi_protocol*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hsi_client*) ; 
 int /*<<< orphan*/  ssip_rx_data_complete ; 
 int /*<<< orphan*/  FUNC13 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct hsi_client *cl, u32 cmd)
{
	struct ssi_protocol *ssi = FUNC6(cl);
	struct sk_buff *skb;
	struct hsi_msg *msg;
	int len = FUNC1(cmd);

	FUNC2(&cl->device, "RX strans: %d frames\n", len);
	FUNC9(&ssi->lock);
	if (FUNC14(ssi->main_state != ACTIVE)) {
		FUNC3(&cl->device, "START TRANS wrong state: S(%d) M(%d)\n",
					ssi->send_state, ssi->main_state);
		FUNC10(&ssi->lock);
		return;
	}
	FUNC13(ssi, RECEIVING);
	if (FUNC14(FUNC0(cmd) != ssi->rxid)) {
		FUNC3(&cl->device, "START TRANS id %d expected %d\n",
					FUNC0(cmd), ssi->rxid);
		FUNC10(&ssi->lock);
		goto out1;
	}
	ssi->rxid++;
	FUNC10(&ssi->lock);
	skb = FUNC7(ssi->netdev, len * 4);
	if (FUNC14(!skb)) {
		FUNC3(&cl->device, "No memory for rx skb\n");
		goto out1;
	}
	skb->dev = ssi->netdev;
	FUNC8(skb, len * 4);
	msg = FUNC11(ssi, skb, GFP_ATOMIC);
	if (FUNC14(!msg)) {
		FUNC3(&cl->device, "No memory for RX data msg\n");
		goto out2;
	}
	msg->complete = ssip_rx_data_complete;
	FUNC5(cl, msg);

	return;
out2:
	FUNC4(skb);
out1:
	FUNC12(cl);
}