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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct cpl_rx_data_ack {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct c4iw_ep {int rcv_win; TYPE_2__ com; int /*<<< orphan*/  ctrlq_idx; int /*<<< orphan*/  hwtid; } ;
struct TYPE_3__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RCV_BUFSIZ_M ; 
 int RX_DACK_CHANGE_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RX_FORCE_ACK_F ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dack_mode ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct c4iw_ep*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct c4iw_ep *ep, u32 credits)
{
	struct sk_buff *skb;
	u32 wrlen = FUNC6(sizeof(struct cpl_rx_data_ack), 16);
	u32 credit_dack;

	FUNC4("ep %p tid %u credits %u\n",
		 ep, ep->hwtid, credits);
	skb = FUNC3(NULL, wrlen, GFP_KERNEL);
	if (!skb) {
		FUNC5("update_rx_credits - cannot alloc skb!\n");
		return 0;
	}

	/*
	 * If we couldn't specify the entire rcv window at connection setup
	 * due to the limit in the number of bits in the RCV_BUFSIZ field,
	 * then add the overage in to the credits returned.
	 */
	if (ep->rcv_win > RCV_BUFSIZ_M * 1024)
		credits += ep->rcv_win - RCV_BUFSIZ_M * 1024;

	credit_dack = credits | RX_FORCE_ACK_F | RX_DACK_CHANGE_F |
		      FUNC0(dack_mode);

	FUNC2(skb, wrlen, ep->hwtid, ep->ctrlq_idx,
			    credit_dack);

	FUNC1(&ep->com.dev->rdev, skb);
	return credits;
}