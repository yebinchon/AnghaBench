#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct chtls_sock {int txq_idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  CPL_ABORT_NO_RST ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sock*) ; 
 struct chtls_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct sock *lsk, struct sk_buff *skb)
{
	struct chtls_sock *csk;
	struct sock *child;
	int queue;

	child = skb->sk;
	csk = FUNC2(child);
	queue = csk->txq_idx;

	skb->sk	= NULL;
	FUNC1(child, lsk);
	FUNC3(child, skb, FUNC0(skb)->cdev,
		       CPL_ABORT_NO_RST, queue);
}