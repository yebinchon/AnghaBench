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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct fw_flowc_wr {int dummy; } ;
struct chtls_sock {int txq_idx; } ;

/* Variables and functions */
 int CPL_PRIORITY_DATA ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fw_flowc_wr*,int) ; 
 struct chtls_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct sock *sk,
					   struct fw_flowc_wr *flowc,
					   int flowclen)
{
	struct chtls_sock *csk = FUNC3(sk);
	struct sk_buff *skb;

	skb = FUNC1(flowclen, GFP_ATOMIC);
	if (!skb)
		return NULL;

	FUNC2(FUNC0(skb, flowclen), flowc, flowclen);
	FUNC4(skb, (csk->txq_idx << 1) | CPL_PRIORITY_DATA);

	return skb;
}