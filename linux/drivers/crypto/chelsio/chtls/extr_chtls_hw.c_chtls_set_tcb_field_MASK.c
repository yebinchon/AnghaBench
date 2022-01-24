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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ulptx_idata {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_set_tcb_field {int dummy; } ;
struct chtls_sock {int txq_idx; unsigned int wr_credits; unsigned int wr_unacked; int /*<<< orphan*/  egress_dev; } ;

/* Variables and functions */
 int CPL_PRIORITY_DATA ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct chtls_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct chtls_sock* FUNC6 (struct sock*) ; 
 unsigned int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, u16 word, u64 mask, u64 val)
{
	struct cpl_set_tcb_field *req;
	unsigned int credits_needed;
	struct chtls_sock *csk;
	struct ulptx_idata *sc;
	struct sk_buff *skb;
	unsigned int wrlen;
	int ret;

	wrlen = FUNC7(sizeof(*req) + sizeof(*sc), 16);

	skb = FUNC2(wrlen, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	credits_needed = FUNC0(wrlen, 16);
	csk = FUNC6(sk);

	FUNC1(sk, skb, word, mask, val, 0, 1);
	FUNC8(skb, (csk->txq_idx << 1) | CPL_PRIORITY_DATA);
	csk->wr_credits -= credits_needed;
	csk->wr_unacked += credits_needed;
	FUNC4(csk, skb);
	ret = FUNC3(csk->egress_dev, skb);
	if (ret < 0)
		FUNC5(skb);
	return ret < 0 ? ret : 0;
}