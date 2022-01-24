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
typedef  int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rss_header {int opcode; } ;
struct cpl_peer_close {int dummy; } ;
struct chtls_dev {int /*<<< orphan*/  tids; } ;

/* Variables and functions */
#define  CPL_ABORT_REQ_RSS 131 
#define  CPL_ABORT_RPL_RSS 130 
#define  CPL_CLOSE_CON_RPL 129 
#define  CPL_PEER_CLOSE 128 
 unsigned int FUNC0 (struct cpl_peer_close*) ; 
 int RSS_HDR ; 
 void FUNC1 (struct sock*,struct sk_buff*) ; 
 void FUNC2 (struct sock*,struct sk_buff*) ; 
 void FUNC3 (struct sock*,struct sk_buff*) ; 
 void FUNC4 (struct sock*,struct sk_buff*) ; 
 struct cpl_peer_close* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sock* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (void (*) (struct sock*,struct sk_buff*),struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct chtls_dev *cdev, struct sk_buff *skb)
{
	struct cpl_peer_close *req = FUNC5(skb) + RSS_HDR;
	void (*fn)(struct sock *sk, struct sk_buff *skb);
	unsigned int hwtid = FUNC0(req);
	struct sock *sk;
	u8 opcode;

	opcode = ((const struct rss_header *)FUNC5(skb))->opcode;

	sk = FUNC7(cdev->tids, hwtid);
	if (!sk)
		goto rel_skb;

	switch (opcode) {
	case CPL_PEER_CLOSE:
		fn = chtls_peer_close;
		break;
	case CPL_CLOSE_CON_RPL:
		fn = chtls_close_con_rpl;
		break;
	case CPL_ABORT_REQ_RSS:
		fn = chtls_abort_req_rss;
		break;
	case CPL_ABORT_RPL_RSS:
		fn = chtls_abort_rpl_rss;
		break;
	default:
		goto rel_skb;
	}

	FUNC8(fn, sk, skb);
	return 0;

rel_skb:
	FUNC6(skb);
	return 0;
}