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
struct tlsrx_cmp_hdr {int res_to_mac_error; int /*<<< orphan*/  type; } ;
struct tcp_sock {int /*<<< orphan*/  rcv_nxt; } ;
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  data_len; scalar_t__ data; } ;
struct cpl_rx_tls_cmp {int /*<<< orphan*/  pdulength_length; int /*<<< orphan*/  seq; } ;
struct chtls_hws {scalar_t__ pldlen; int /*<<< orphan*/  sk_recv_queue; } ;
struct chtls_sock {struct chtls_hws tlshws; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENT_TYPE_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int TLSRX_HDR_PKT_ERROR_M ; 
 int /*<<< orphan*/  TLS_HEADER_LENGTH ; 
 int /*<<< orphan*/  ULPCB_FLAG_TLS_HDR ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct chtls_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 struct cpl_rx_tls_cmp* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct chtls_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 struct tcp_sock* FUNC14 (struct sock*) ; 

__attribute__((used)) static void FUNC15(struct sock *sk, struct sk_buff *skb)
{
	struct tlsrx_cmp_hdr *tls_hdr_pkt;
	struct cpl_rx_tls_cmp *cmp_cpl;
	struct sk_buff *skb_rec;
	struct chtls_sock *csk;
	struct chtls_hws *tlsk;
	struct tcp_sock *tp;

	cmp_cpl = FUNC8(skb);
	csk = FUNC10(sk);
	tlsk = &csk->tlshws;
	tp = FUNC14(sk);

	FUNC1(skb)->seq = FUNC9(cmp_cpl->seq);
	FUNC1(skb)->flags = 0;

	FUNC11(skb);
	FUNC3(skb, sizeof(*cmp_cpl));
	tls_hdr_pkt = (struct tlsrx_cmp_hdr *)skb->data;
	if (tls_hdr_pkt->res_to_mac_error & TLSRX_HDR_PKT_ERROR_M)
		tls_hdr_pkt->type = CONTENT_TYPE_ERROR;
	if (!skb->data_len)
		FUNC5(skb, TLS_HEADER_LENGTH);

	tp->rcv_nxt +=
		FUNC0(FUNC9(cmp_cpl->pdulength_length));

	FUNC1(skb)->flags |= ULPCB_FLAG_TLS_HDR;
	skb_rec = FUNC2(&tlsk->sk_recv_queue);
	if (!skb_rec) {
		FUNC4(&sk->sk_receive_queue, skb);
	} else {
		FUNC7(skb, tlsk->pldlen);
		tlsk->pldlen = 0;
		FUNC4(&sk->sk_receive_queue, skb);
		FUNC4(&sk->sk_receive_queue, skb_rec);
	}

	if (!FUNC12(sk, SOCK_DEAD)) {
		FUNC6(csk);
		sk->sk_data_ready(sk);
	}
}