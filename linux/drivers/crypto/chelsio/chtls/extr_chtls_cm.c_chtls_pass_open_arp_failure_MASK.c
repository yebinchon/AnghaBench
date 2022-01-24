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
struct request_sock {int /*<<< orphan*/  ts_recent; } ;
struct listen_ctx {struct sock* lsk; } ;
struct chtls_sock {struct request_sock* passive_reap_next; struct chtls_dev* cdev; } ;
struct chtls_dev {int /*<<< orphan*/  tids; } ;
struct TYPE_2__ {int /*<<< orphan*/  backlog_rcv; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  CSK_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  bl_pass_open_abort ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sock*,struct sk_buff*) ; 
 struct chtls_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(struct sock *sk,
					struct sk_buff *skb)
{
	const struct request_sock *oreq;
	struct chtls_sock *csk;
	struct chtls_dev *cdev;
	struct sock *parent;
	void *data;

	csk = FUNC8(sk);
	cdev = csk->cdev;

	/*
	 * If the connection is being aborted due to the parent listening
	 * socket going away there's nothing to do, the ABORT_REQ will close
	 * the connection.
	 */
	if (FUNC4(sk, CSK_ABORT_RPL_PENDING)) {
		FUNC5(skb);
		return;
	}

	oreq = csk->passive_reap_next;
	data = FUNC6(cdev->tids, oreq->ts_recent);
	parent = ((struct listen_ctx *)data)->lsk;

	FUNC2(parent);
	if (!FUNC9(parent)) {
		FUNC7(sk, parent, skb);
	} else {
		FUNC0(skb)->backlog_rcv = bl_pass_open_abort;
		FUNC1(parent, skb);
	}
	FUNC3(parent);
}