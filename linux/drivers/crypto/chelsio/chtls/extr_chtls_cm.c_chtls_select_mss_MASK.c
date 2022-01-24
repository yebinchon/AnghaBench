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
struct tcphdr {int dummy; } ;
struct tcp_sock {unsigned int advmss; } ;
struct sock {int dummy; } ;
struct iphdr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ tstamp; int /*<<< orphan*/  mss; } ;
struct cpl_pass_accept_req {TYPE_1__ tcpopt; } ;
struct chtls_sock {struct chtls_dev* cdev; struct sock* sk; } ;
struct chtls_dev {TYPE_2__* lldi; } ;
struct TYPE_6__ {unsigned int icsk_pmtu_cookie; } ;
struct TYPE_5__ {int /*<<< orphan*/  mtus; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPOLEN_TIMESTAMP ; 
 unsigned int FUNC0 (struct tcp_sock*) ; 
 struct dst_entry* FUNC1 (struct sock*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,int,unsigned int*) ; 
 unsigned int FUNC3 (struct dst_entry*) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static unsigned int FUNC8(const struct chtls_sock *csk,
				     unsigned int pmtu,
				     struct cpl_pass_accept_req *req)
{
	struct chtls_dev *cdev;
	struct dst_entry *dst;
	unsigned int tcpoptsz;
	unsigned int iphdrsz;
	unsigned int mtu_idx;
	struct tcp_sock *tp;
	unsigned int mss;
	struct sock *sk;

	mss = FUNC5(req->tcpopt.mss);
	sk = csk->sk;
	dst = FUNC1(sk);
	cdev = csk->cdev;
	tp = FUNC7(sk);
	tcpoptsz = 0;

	iphdrsz = sizeof(struct iphdr) + sizeof(struct tcphdr);
	if (req->tcpopt.tstamp)
		tcpoptsz += FUNC6(TCPOLEN_TIMESTAMP, 4);

	tp->advmss = FUNC3(dst);
	if (FUNC0(tp) && tp->advmss > FUNC0(tp))
		tp->advmss = FUNC0(tp);
	if (tp->advmss > pmtu - iphdrsz)
		tp->advmss = pmtu - iphdrsz;
	if (mss && tp->advmss > mss)
		tp->advmss = mss;

	tp->advmss = FUNC2(cdev->lldi->mtus,
					    iphdrsz + tcpoptsz,
					    tp->advmss - tcpoptsz,
					    8, &mtu_idx);
	tp->advmss -= iphdrsz;

	FUNC4(sk)->icsk_pmtu_cookie = pmtu;
	return mtu_idx;
}