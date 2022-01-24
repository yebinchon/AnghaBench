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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int dummy; } ;
struct chtls_sock {int /*<<< orphan*/  txdata_skb_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_ABORT_SEND_RST ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ TCP_CLOSE ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct chtls_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *child)
{
	struct chtls_sock *csk = FUNC4(child);
	struct sk_buff *skb;

	skb = FUNC1(csk->txdata_skb_cache,
			     sizeof(struct cpl_abort_req));

	FUNC2(child, CPL_ABORT_SEND_RST, skb);
	FUNC5(child);
	FUNC0(child);
	if (child->sk_state == TCP_CLOSE)
		FUNC3(child);
}