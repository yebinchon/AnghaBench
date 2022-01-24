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
typedef  unsigned long u32 ;
struct tcp_sock {int urg_data; scalar_t__ urg_seq; scalar_t__ copied_seq; } ;
struct TYPE_3__ {scalar_t__ tail; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; int /*<<< orphan*/  sk_receive_queue; TYPE_1__ sk_backlog; scalar_t__ sk_err; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;} ;
struct sk_buff {unsigned long len; int /*<<< orphan*/  hdr_len; } ;
struct msghdr {int dummy; } ;
struct chtls_hws {unsigned long copied_seq; int /*<<< orphan*/  rcvpld; } ;
struct chtls_sock {scalar_t__ wr_credits; scalar_t__ wr_max_credits; int /*<<< orphan*/  txq; struct chtls_hws tlshws; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_UPDATE_RCV_WND ; 
 int EAGAIN ; 
 int EFAULT ; 
 int ENOTCONN ; 
 int MSG_WAITALL ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  SOCK_URGINLINE ; 
 scalar_t__ TCP_CLOSE ; 
 int ULPCB_FLAG_TLS_HDR ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct chtls_sock*,int) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct chtls_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct sk_buff*,unsigned long,struct msghdr*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct sock*) ; 
 scalar_t__ FUNC18 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC19 (long) ; 
 int FUNC20 (struct sock*,int,size_t) ; 
 long FUNC21 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 struct tcp_sock* FUNC23 (struct sock*) ; 
 scalar_t__ FUNC24 (int) ; 

__attribute__((used)) static int FUNC25(struct sock *sk, struct msghdr *msg, size_t len,
			    int nonblock, int flags, int *addr_len)
{
	struct chtls_sock *csk = FUNC9(sk);
	struct chtls_hws *hws = &csk->tlshws;
	struct tcp_sock *tp = FUNC23(sk);
	unsigned long avail;
	int buffers_freed;
	int copied = 0;
	int target;
	long timeo;

	buffers_freed = 0;

	timeo = FUNC21(sk, nonblock);
	target = FUNC20(sk, flags & MSG_WAITALL, len);

	if (FUNC24(FUNC6(sk, CSK_UPDATE_RCV_WND)))
		FUNC3(sk, copied);

	do {
		struct sk_buff *skb;
		u32 offset = 0;

		if (FUNC24(tp->urg_data &&
			     tp->urg_seq == tp->copied_seq)) {
			if (copied)
				break;
			if (FUNC11(current)) {
				copied = timeo ? FUNC19(timeo) :
					-EAGAIN;
				break;
			}
		}
		skb = FUNC15(&sk->sk_receive_queue);
		if (skb)
			goto found_ok_skb;
		if (csk->wr_credits &&
		    FUNC16(&csk->txq) &&
		    FUNC5(csk, csk->wr_credits ==
				      csk->wr_max_credits))
			sk->sk_write_space(sk);

		if (copied >= target && !sk->sk_backlog.tail)
			break;

		if (copied) {
			if (sk->sk_err || sk->sk_state == TCP_CLOSE ||
			    (sk->sk_shutdown & RCV_SHUTDOWN) ||
			    FUNC11(current))
				break;

			if (!timeo)
				break;
		} else {
			if (FUNC18(sk, SOCK_DONE))
				break;
			if (sk->sk_err) {
				copied = FUNC17(sk);
				break;
			}
			if (sk->sk_shutdown & RCV_SHUTDOWN)
				break;
			if (sk->sk_state == TCP_CLOSE) {
				copied = -ENOTCONN;
				break;
			}
			if (!timeo) {
				copied = -EAGAIN;
				break;
			}
			if (FUNC11(current)) {
				copied = FUNC19(timeo);
				break;
			}
		}
		if (sk->sk_backlog.tail) {
			FUNC10(sk);
			FUNC8(sk);
			FUNC3(sk, copied);
			continue;
		}

		if (copied >= target)
			break;
		FUNC3(sk, copied);
		FUNC12(sk, &timeo, NULL);
		continue;
found_ok_skb:
		if (!skb->len) {
			FUNC14(skb, NULL);
			FUNC1(skb, &sk->sk_receive_queue);
			FUNC7(skb);

			if (!copied && !timeo) {
				copied = -EAGAIN;
				break;
			}

			if (copied < target) {
				FUNC10(sk);
				FUNC8(sk);
				continue;
			}
			break;
		}
		offset = hws->copied_seq;
		avail = skb->len - offset;
		if (len < avail)
			avail = len;

		if (FUNC24(tp->urg_data)) {
			u32 urg_offset = tp->urg_seq - tp->copied_seq;

			if (urg_offset < avail) {
				if (urg_offset) {
					avail = urg_offset;
				} else if (!FUNC18(sk, SOCK_URGINLINE)) {
					/* First byte is urgent, skip */
					tp->copied_seq++;
					offset++;
					avail--;
					if (!avail)
						goto skip_copy;
				}
			}
		}
		if (FUNC13(skb, offset, msg, avail)) {
			if (!copied) {
				copied = -EFAULT;
				break;
			}
		}

		copied += avail;
		len -= avail;
		hws->copied_seq += avail;
skip_copy:
		if (tp->urg_data && FUNC2(tp->copied_seq, tp->urg_seq))
			tp->urg_data = 0;

		if ((avail + offset) >= skb->len) {
			if (FUNC0(skb)->flags & ULPCB_FLAG_TLS_HDR) {
				tp->copied_seq += skb->len;
				hws->rcvpld = skb->hdr_len;
			} else {
				tp->copied_seq += hws->rcvpld;
			}
			FUNC4(sk, skb);
			buffers_freed++;
			hws->copied_seq = 0;
			if (copied >= target &&
			    !FUNC15(&sk->sk_receive_queue))
				break;
		}
	} while (len > 0);

	if (buffers_freed)
		FUNC3(sk, copied);
	FUNC10(sk);
	return copied;
}