#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct vlan_ethhdr {int dummy; } ;
struct tcphdr {scalar_t__ cwr; scalar_t__ ece; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  seq; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_family; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {struct sock* sk; } ;
struct request_sock {scalar_t__ ts_recent; scalar_t__ mss; scalar_t__ cookie_ts; scalar_t__ rsk_window_clamp; scalar_t__ rsk_rcv_wnd; } ;
struct listen_ctx {int /*<<< orphan*/  synq; } ;
struct iphdr {int version; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ethhdr {int dummy; } ;
struct cpl_t5_pass_accept_rpl {int dummy; } ;
struct TYPE_8__ {int wsf; } ;
struct cpl_pass_accept_req {TYPE_1__ tcpopt; int /*<<< orphan*/  hdr_len; int /*<<< orphan*/  tos_stid; } ;
struct chtls_sock {int /*<<< orphan*/  synq; struct listen_ctx* listen_ctx; } ;
struct chtls_dev {TYPE_3__* lldi; int /*<<< orphan*/  tids; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_14__ {struct chtls_dev* cdev; } ;
struct TYPE_13__ {int wscale_ok; int snd_wscale; int ecn_ok; int /*<<< orphan*/  ir_iif; } ;
struct TYPE_9__ {int sysctl_tcp_ecn; scalar_t__ sysctl_tcp_window_scaling; } ;
struct TYPE_12__ {TYPE_2__ ipv4; } ;
struct TYPE_11__ {int tfo_listener; int /*<<< orphan*/  rcv_isn; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ports; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ ETH_HLEN ; 
 unsigned int FUNC1 (struct cpl_pass_accept_req*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int RSS_HDR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct cpl_pass_accept_req*,unsigned int) ; 
 struct sock* FUNC10 (struct sock*,struct request_sock*,void*,struct cpl_pass_accept_req*,struct chtls_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct request_sock*) ; 
 int /*<<< orphan*/  chtls_rsk_ops ; 
 int /*<<< orphan*/  FUNC12 (struct request_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct request_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpl_pass_accept_req* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct sock*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 scalar_t__ FUNC19 (struct sock*) ; 
 struct request_sock* FUNC20 (int /*<<< orphan*/ *,struct sock*,int) ; 
 TYPE_6__* FUNC21 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sock* FUNC25 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,unsigned int) ; 
 struct chtls_sock* FUNC29 (struct sock*) ; 
 unsigned int FUNC30 (int,int) ; 
 scalar_t__ FUNC31 (struct sock*) ; 
 int /*<<< orphan*/  FUNC32 (struct sk_buff*,int) ; 
 TYPE_5__* FUNC33 (struct sock*) ; 
 scalar_t__ FUNC34 (struct sock*) ; 
 TYPE_4__* FUNC35 (struct request_sock*) ; 

__attribute__((used)) static void FUNC36(struct sock *sk,
				      struct sk_buff *skb)
{
	struct cpl_t5_pass_accept_rpl *rpl;
	struct cpl_pass_accept_req *req;
	struct listen_ctx *listen_ctx;
	struct vlan_ethhdr *vlan_eh;
	struct request_sock *oreq;
	struct sk_buff *reply_skb;
	struct chtls_sock *csk;
	struct chtls_dev *cdev;
	struct tcphdr *tcph;
	struct sock *newsk;
	struct ethhdr *eh;
	struct iphdr *iph;
	void *network_hdr;
	unsigned int stid;
	unsigned int len;
	unsigned int tid;
	bool th_ecn, ect;
	__u8 ip_dsfield; /* IPv4 tos or IPv6 dsfield */
	u16 eth_hdr_len;
	bool ecn_ok;

	req = FUNC14(skb) + RSS_HDR;
	tid = FUNC1(req);
	cdev = FUNC0(skb)->cdev;
	newsk = FUNC25(cdev->tids, tid);
	stid = FUNC3(FUNC27(req->tos_stid));
	if (newsk) {
		FUNC28("tid (%d) already in use\n", tid);
		return;
	}

	len = FUNC30(sizeof(*rpl), 16);
	reply_skb = FUNC6(len, GFP_ATOMIC);
	if (!reply_skb) {
		FUNC17(cdev->tids, 0, tid, sk->sk_family);
		FUNC23(skb);
		return;
	}

	if (sk->sk_state != TCP_LISTEN)
		goto reject;

	if (FUNC19(sk))
		goto reject;

	if (FUNC31(sk))
		goto reject;

	oreq = FUNC20(&chtls_rsk_ops, sk, true);
	if (!oreq)
		goto reject;

	oreq->rsk_rcv_wnd = 0;
	oreq->rsk_window_clamp = 0;
	oreq->cookie_ts = 0;
	oreq->mss = 0;
	oreq->ts_recent = 0;

	eth_hdr_len = FUNC4(FUNC27(req->hdr_len));
	if (eth_hdr_len == ETH_HLEN) {
		eh = (struct ethhdr *)(req + 1);
		iph = (struct iphdr *)(eh + 1);
		network_hdr = (void *)(eh + 1);
	} else {
		vlan_eh = (struct vlan_ethhdr *)(req + 1);
		iph = (struct iphdr *)(vlan_eh + 1);
		network_hdr = (void *)(vlan_eh + 1);
	}
	if (iph->version != 0x4)
		goto free_oreq;

	tcph = (struct tcphdr *)(iph + 1);
	FUNC32(skb, (void *)iph - (void *)req);

	FUNC35(oreq)->tfo_listener = false;
	FUNC35(oreq)->rcv_isn = FUNC27(tcph->seq);
	FUNC13(oreq, tcph->source, tcph->dest);
	FUNC12(oreq, iph->daddr, iph->saddr);
	ip_dsfield = FUNC22(iph);
	if (req->tcpopt.wsf <= 14 &&
	    FUNC33(sk)->ipv4.sysctl_tcp_window_scaling) {
		FUNC21(oreq)->wscale_ok = 1;
		FUNC21(oreq)->snd_wscale = req->tcpopt.wsf;
	}
	FUNC21(oreq)->ir_iif = sk->sk_bound_dev_if;
	th_ecn = tcph->ece && tcph->cwr;
	if (th_ecn) {
		ect = !FUNC2(ip_dsfield);
		ecn_ok = FUNC33(sk)->ipv4.sysctl_tcp_ecn;
		if ((!ect && ecn_ok) || FUNC34(sk))
			FUNC21(oreq)->ecn_ok = 1;
	}

	newsk = FUNC10(sk, oreq, network_hdr, req, cdev);
	if (!newsk)
		goto reject;

	if (FUNC7(newsk))
		goto reject;
	FUNC18(sk);
	reply_skb->sk = newsk;
	FUNC8(newsk);
	FUNC15(cdev->tids, newsk, tid, newsk->sk_family);
	csk = FUNC29(newsk);
	listen_ctx = (struct listen_ctx *)FUNC24(cdev->tids, stid);
	csk->listen_ctx = listen_ctx;
	FUNC5(&listen_ctx->synq, (struct sk_buff *)&csk->synq);
	FUNC9(reply_skb, req, tid);
	FUNC23(skb);
	return;

free_oreq:
	FUNC11(oreq);
reject:
	FUNC26(reply_skb, 0, tid);
	FUNC16(cdev->lldi->ports[0], reply_skb);
	FUNC23(skb);
}