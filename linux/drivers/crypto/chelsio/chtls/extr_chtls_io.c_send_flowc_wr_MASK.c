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
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct fw_flowc_wr {int dummy; } ;
struct chtls_sock {int /*<<< orphan*/  txq_idx; int /*<<< orphan*/  egress_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_TX_DATA_SENT ; 
 int ENOMEM ; 
 int ULPCB_FLAG_NO_APPEND ; 
 int ULPCB_FLAG_NO_HDR ; 
 struct sk_buff* FUNC0 (struct sock*,struct fw_flowc_wr*,int) ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fw_flowc_wr*,int) ; 
 struct chtls_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct tcp_sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*,int) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct fw_flowc_wr *flowc,
			 int flowclen)
{
	struct chtls_sock *csk = FUNC3(sk);
	struct tcp_sock *tp = FUNC6(sk);
	struct sk_buff *skb;
	int flowclen16;
	int ret;

	flowclen16 = flowclen / 16;

	if (FUNC1(sk, CSK_TX_DATA_SENT)) {
		skb = FUNC0(sk, flowc, flowclen);
		if (!skb)
			return -ENOMEM;

		FUNC5(sk, skb,
			   ULPCB_FLAG_NO_HDR | ULPCB_FLAG_NO_APPEND);
		return 0;
	}

	ret = FUNC2(csk->egress_dev,
				 csk->txq_idx,
				 flowc, flowclen);
	if (!ret)
		return flowclen16;
	skb = FUNC0(sk, flowc, flowclen);
	if (!skb)
		return -ENOMEM;
	FUNC4(sk, tp, skb, 0);
	return flowclen16;
}