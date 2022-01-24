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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_family; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_rpl_rss {int dummy; } ;
struct chtls_sock {int /*<<< orphan*/  port_id; struct chtls_dev* cdev; } ;
struct chtls_dev {int /*<<< orphan*/  tids; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_ABORT_REQ_RCVD ; 
 int /*<<< orphan*/  CSK_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_abort_rpl_rss*) ; 
 int RSS_HDR ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct cpl_abort_rpl_rss* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct chtls_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(struct sock *sk, struct sk_buff *skb)
{
	struct cpl_abort_rpl_rss *rpl = FUNC3(skb) + RSS_HDR;
	struct chtls_sock *csk;
	struct chtls_dev *cdev;

	csk = FUNC8(sk);
	cdev = csk->cdev;

	if (FUNC4(csk, CSK_ABORT_RPL_PENDING)) {
		FUNC5(csk, CSK_ABORT_RPL_PENDING);
		if (!FUNC4(csk, CSK_ABORT_REQ_RCVD)) {
			if (sk->sk_state == TCP_SYN_SENT) {
				FUNC6(cdev->tids,
						 csk->port_id,
						 FUNC0(rpl),
						 sk->sk_family);
				FUNC9(sk);
			}
			FUNC2(sk);
			FUNC1(sk);
		}
	}
	FUNC7(skb);
}