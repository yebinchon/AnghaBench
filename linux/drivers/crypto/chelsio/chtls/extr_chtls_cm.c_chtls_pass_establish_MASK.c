#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_socket; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;struct chtls_sock* sk_user_data; } ;
struct sk_buff {struct sock* sk; } ;
struct listen_ctx {struct sock* lsk; } ;
struct cpl_pass_establish {int /*<<< orphan*/  tos_stid; int /*<<< orphan*/  tcp_opt; int /*<<< orphan*/  snd_isn; } ;
struct chtls_sock {int wr_max_credits; int wr_credits; TYPE_1__* listen_ctx; scalar_t__ wr_unacked; } ;
struct chtls_dev {int /*<<< orphan*/  tids; } ;
struct TYPE_4__ {int /*<<< orphan*/  backlog_rcv; struct chtls_dev* cdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  synq; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int CPL_RET_BUF_DONE ; 
 int CPL_RET_UNKNOWN_TID ; 
 unsigned int FUNC1 (struct cpl_pass_establish*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int RSS_HDR ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sock*,struct chtls_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  bl_add_pass_open_to_parent ; 
 struct cpl_pass_establish* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 
 void* FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sock* FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct chtls_dev *cdev, struct sk_buff *skb)
{
	struct cpl_pass_establish *req = FUNC7(skb) + RSS_HDR;
	struct chtls_sock *csk;
	struct sock *lsk, *sk;
	unsigned int hwtid;

	hwtid = FUNC1(req);
	sk = FUNC11(cdev->tids, hwtid);
	if (!sk)
		return (CPL_RET_UNKNOWN_TID | CPL_RET_BUF_DONE);

	FUNC5(sk);
	if (FUNC19(FUNC17(sk))) {
		FUNC8(skb);
	} else {
		unsigned int stid;
		void *data;

		csk = sk->sk_user_data;
		csk->wr_max_credits = 64;
		csk->wr_credits = 64;
		csk->wr_unacked = 0;
		FUNC12(sk, FUNC13(req->snd_isn), FUNC14(req->tcp_opt));
		stid = FUNC2(FUNC13(req->tos_stid));
		sk->sk_state_change(sk);
		if (FUNC19(sk->sk_socket))
			FUNC15(sk, 0, POLL_OUT);

		data = FUNC10(cdev->tids, stid);
		lsk = ((struct listen_ctx *)data)->lsk;

		FUNC5(lsk);
		if (FUNC19(FUNC16(&csk->listen_ctx->synq))) {
			/* removed from synq */
			FUNC6(lsk);
			FUNC8(skb);
			goto unlock;
		}

		if (FUNC9(!FUNC17(lsk))) {
			FUNC8(skb);
			FUNC4(sk, lsk, cdev);
		} else {
			skb->sk = sk;
			FUNC0(skb)->cdev = cdev;
			FUNC0(skb)->backlog_rcv =
				bl_add_pass_open_to_parent;
			FUNC3(lsk, skb);
		}
		FUNC6(lsk);
	}
unlock:
	FUNC6(sk);
	return 0;
}