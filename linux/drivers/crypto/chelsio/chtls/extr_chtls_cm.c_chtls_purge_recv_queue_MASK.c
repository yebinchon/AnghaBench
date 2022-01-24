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
struct chtls_hws {int /*<<< orphan*/  sk_recv_queue; } ;
struct chtls_sock {struct chtls_hws tlshws; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct chtls_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct chtls_sock *csk = FUNC2(sk);
	struct chtls_hws *tlsk = &csk->tlshws;
	struct sk_buff *skb;

	while ((skb = FUNC0(&tlsk->sk_recv_queue)) != NULL) {
		FUNC3(skb, NULL);
		FUNC1(skb);
	}
}