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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void (* backlog_rcv ) (struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC9(void (*fn)(struct sock *, struct sk_buff *),
				   struct sock *sk,
				   struct sk_buff *skb)
{
	FUNC4(skb);
	FUNC5(skb);
	FUNC6(skb);

	FUNC2(sk);
	if (FUNC8(FUNC7(sk))) {
		FUNC0(skb)->backlog_rcv = fn;
		FUNC1(sk, skb);
	} else {
		fn(sk, skb);
	}
	FUNC3(sk);
}