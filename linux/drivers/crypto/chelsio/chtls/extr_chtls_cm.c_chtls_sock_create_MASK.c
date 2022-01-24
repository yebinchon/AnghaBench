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
struct TYPE_2__ {int ofld; int txkey; int rxkey; int /*<<< orphan*/  sk_recv_queue; int /*<<< orphan*/  mfs; } ;
struct chtls_sock {TYPE_1__ tlshws; int /*<<< orphan*/  mss; int /*<<< orphan*/ * wr_skb_tail; int /*<<< orphan*/ * wr_skb_head; int /*<<< orphan*/  txq; struct chtls_dev* cdev; int /*<<< orphan*/  kref; int /*<<< orphan*/  txdata_skb_cache; } ;
struct chtls_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_MSS ; 
 int /*<<< orphan*/  TLS_MFS ; 
 int /*<<< orphan*/  TXDATA_SKB_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct chtls_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct chtls_sock* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct chtls_sock *FUNC5(struct chtls_dev *cdev)
{
	struct chtls_sock *csk = FUNC3(sizeof(*csk), GFP_ATOMIC);

	if (!csk)
		return NULL;

	csk->txdata_skb_cache = FUNC0(TXDATA_SKB_LEN, GFP_ATOMIC);
	if (!csk->txdata_skb_cache) {
		FUNC1(csk);
		return NULL;
	}

	FUNC2(&csk->kref);
	csk->cdev = cdev;
	FUNC4(&csk->txq);
	csk->wr_skb_head = NULL;
	csk->wr_skb_tail = NULL;
	csk->mss = MAX_MSS;
	csk->tlshws.ofld = 1;
	csk->tlshws.txkey = -1;
	csk->tlshws.rxkey = -1;
	csk->tlshws.mfs = TLS_MFS;
	FUNC4(&csk->tlshws.sk_recv_queue);
	return csk;
}