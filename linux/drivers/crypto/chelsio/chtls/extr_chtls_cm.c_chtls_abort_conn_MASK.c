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
struct cpl_abort_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_ABORT_SEND_RST ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, struct sk_buff *skb)
{
	struct sk_buff *abort_skb;

	abort_skb = FUNC0(sizeof(struct cpl_abort_req), GFP_ATOMIC);
	if (abort_skb)
		FUNC1(sk, CPL_ABORT_SEND_RST, abort_skb);
}