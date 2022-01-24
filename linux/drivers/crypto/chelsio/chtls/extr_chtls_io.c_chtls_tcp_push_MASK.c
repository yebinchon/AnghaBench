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
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct chtls_sock {int /*<<< orphan*/  txq; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ULPCB_FLAG_HOLD ; 
 int ULPCB_FLAG_NO_APPEND ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct chtls_sock*,int) ; 
 scalar_t__ FUNC2 (struct tcp_sock*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,int,struct sk_buff*) ; 
 struct chtls_sock* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 

void FUNC10(struct sock *sk, int flags)
{
	struct chtls_sock *csk = FUNC5(sk);
	int qlen = FUNC8(&csk->txq);

	if (FUNC3(qlen)) {
		struct sk_buff *skb = FUNC7(&csk->txq);
		struct tcp_sock *tp = FUNC9(sk);

		FUNC4(tp, flags, skb);

		if (!(FUNC0(skb)->flags & ULPCB_FLAG_NO_APPEND) &&
		    FUNC2(tp, flags)) {
			FUNC0(skb)->flags |= ULPCB_FLAG_HOLD;
			return;
		}

		FUNC0(skb)->flags &= ~ULPCB_FLAG_HOLD;
		if (qlen == 1 &&
		    ((FUNC0(skb)->flags & ULPCB_FLAG_NO_APPEND) ||
		     FUNC6(sk)))
			FUNC1(csk, 1);
	}
}