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
struct ssi_protocol {int /*<<< orphan*/  rx_wd; } ;
struct sk_buff {int dummy; } ;
struct hsi_msg {scalar_t__ status; struct sk_buff* context; struct hsi_client* cl; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ HSI_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ssi_protocol* FUNC2 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct hsi_msg *msg)
{
	struct hsi_client *cl = msg->cl;
	struct ssi_protocol *ssi = FUNC2(cl);
	struct sk_buff *skb;

	if (msg->status == HSI_STATUS_ERROR) {
		FUNC1(&cl->device, "RX data error\n");
		FUNC5(msg);
		FUNC4(cl);
		return;
	}
	FUNC0(&ssi->rx_wd); /* FIXME: Revisit */
	skb = msg->context;
	FUNC6(skb);
	FUNC3(msg);
}