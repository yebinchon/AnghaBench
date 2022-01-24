#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {int write_seq; } ;
struct sock {int sk_wmem_queued; TYPE_1__* sk_socket; } ;
struct sk_buff {int len; int data_len; int truesize; } ;
struct page {int dummy; } ;
struct chtls_sock {int mss; int /*<<< orphan*/  txq; struct chtls_dev* cdev; } ;
struct chtls_dev {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_TX_MORE_DATA ; 
 int MAX_SKB_FRAGS ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int TCPF_CLOSE_WAIT ; 
 int TCPF_ESTABLISHED ; 
 int /*<<< orphan*/  TX_TLSHDR_LEN ; 
 int ULPCB_FLAG_NO_APPEND ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 scalar_t__ FUNC2 (struct tcp_sock*,int) ; 
 scalar_t__ FUNC3 (struct chtls_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct chtls_dev*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct chtls_dev*,struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct sk_buff* FUNC9 (struct sock*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct chtls_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 struct chtls_sock* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int) ; 
 int FUNC18 (struct sock*,int,int) ; 
 scalar_t__ FUNC19 (struct sock*) ; 
 int FUNC20 (struct sock*,long*) ; 
 scalar_t__ FUNC21 (struct sock*) ; 
 scalar_t__ FUNC22 (struct sk_buff*,int,struct page*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,int,struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC26 (struct sk_buff*) ; 
 long FUNC27 (struct sock*,int) ; 
 struct tcp_sock* FUNC28 (struct sock*) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*) ; 
 scalar_t__ FUNC30 (int) ; 

int FUNC31(struct sock *sk, struct page *page,
		   int offset, size_t size, int flags)
{
	struct chtls_sock *csk;
	struct chtls_dev *cdev;
	int mss, err, copied;
	struct tcp_sock *tp;
	long timeo;

	tp = FUNC28(sk);
	copied = 0;
	csk = FUNC13(sk);
	cdev = csk->cdev;
	timeo = FUNC27(sk, flags & MSG_DONTWAIT);

	err = FUNC20(sk, &timeo);
	if (!FUNC17(sk, TCPF_ESTABLISHED | TCPF_CLOSE_WAIT) &&
	    err != 0)
		goto out_err;

	mss = csk->mss;
	FUNC6(csk, CSK_TX_MORE_DATA);

	while (size > 0) {
		struct sk_buff *skb = FUNC25(&csk->txq);
		int copy, i;

		if (!skb || (FUNC0(skb)->flags & ULPCB_FLAG_NO_APPEND) ||
		    (copy = mss - skb->len) <= 0) {
new_buf:
			if (!FUNC4(cdev, sk))
				goto wait_for_sndbuf;

			if (FUNC11(csk)) {
				skb = FUNC9(sk,
						     FUNC15(sk, size,
								 flags,
								 TX_TLSHDR_LEN),
						     true);
			} else {
				skb = FUNC10(sk, 0);
			}
			if (!skb)
				goto wait_for_memory;
			copy = mss;
		}
		if (copy > size)
			copy = size;

		i = FUNC26(skb)->nr_frags;
		if (FUNC22(skb, i, page, offset)) {
			FUNC24(&FUNC26(skb)->frags[i - 1], copy);
		} else if (i < MAX_SKB_FRAGS) {
			FUNC8(page);
			FUNC23(skb, i, page, offset, copy);
		} else {
			FUNC29(skb);
			FUNC12(sk);
			goto new_buf;
		}

		skb->len += copy;
		if (skb->len == mss)
			FUNC29(skb);
		skb->data_len += copy;
		skb->truesize += copy;
		sk->sk_wmem_queued += copy;
		tp->write_seq += copy;
		copied += copy;
		offset += copy;
		size -= copy;

		if (FUNC2(tp, flags) &&
		    (FUNC21(sk) < FUNC19(sk)))
			FUNC0(skb)->flags |= ULPCB_FLAG_NO_APPEND;

		if (!size)
			break;

		if (FUNC30(FUNC0(skb)->flags & ULPCB_FLAG_NO_APPEND))
			FUNC12(sk);
		continue;
wait_for_sndbuf:
		FUNC16(SOCK_NOSPACE, &sk->sk_socket->flags);
wait_for_memory:
		err = FUNC7(cdev, sk, &timeo);
		if (err)
			goto do_error;
	}
out:
	FUNC5(csk, CSK_TX_MORE_DATA);
	if (copied)
		FUNC1(sk, flags);
done:
	FUNC14(sk);
	return copied;

do_error:
	if (copied)
		goto out;

out_err:
	if (FUNC3(csk))
		FUNC5(csk, CSK_TX_MORE_DATA);
	copied = FUNC18(sk, flags, err);
	goto done;
}