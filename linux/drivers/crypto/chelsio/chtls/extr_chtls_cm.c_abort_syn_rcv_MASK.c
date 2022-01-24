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
struct sock {struct chtls_sock* sk_user_data; } ;
struct sk_buff {struct sock* sk; } ;
struct request_sock {int /*<<< orphan*/  ts_recent; } ;
struct listen_ctx {struct sock* lsk; } ;
struct chtls_sock {int txq_idx; struct chtls_dev* cdev; struct request_sock* passive_reap_next; } ;
struct chtls_dev {int /*<<< orphan*/  tids; } ;
struct TYPE_2__ {int /*<<< orphan*/  backlog_rcv; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  CPL_ABORT_NO_RST ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  bl_abort_syn_rcv ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sock*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,struct chtls_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	const struct request_sock *oreq;
	struct listen_ctx *listen_ctx;
	struct chtls_sock *csk;
	struct chtls_dev *cdev;
	struct sock *psk;
	void *ctx;

	csk = sk->sk_user_data;
	oreq = csk->passive_reap_next;
	cdev = csk->cdev;

	if (!oreq)
		return -1;

	ctx = FUNC5(cdev->tids, oreq->ts_recent);
	if (!ctx)
		return -1;

	listen_ctx = (struct listen_ctx *)ctx;
	psk = listen_ctx->lsk;

	FUNC2(psk);
	if (!FUNC7(psk)) {
		int queue = csk->txq_idx;

		FUNC4(sk, psk);
		FUNC6(sk, skb, cdev, CPL_ABORT_NO_RST, queue);
	} else {
		skb->sk = sk;
		FUNC0(skb)->backlog_rcv = bl_abort_syn_rcv;
		FUNC1(psk, skb);
	}
	FUNC3(psk);
	return 0;
}