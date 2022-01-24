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
struct chtls_sock {int /*<<< orphan*/  egress_dev; int /*<<< orphan*/  l2t_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct chtls_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static inline void FUNC3(struct sock *sk, struct tcp_sock *tp,
				 struct sk_buff *skb, int through_l2t)
{
	struct chtls_sock *csk = FUNC2(sk);

	if (through_l2t) {
		/* send through L2T */
		FUNC0(csk->egress_dev, skb, csk->l2t_entry);
	} else {
		/* send directly */
		FUNC1(csk->egress_dev, skb);
	}
}