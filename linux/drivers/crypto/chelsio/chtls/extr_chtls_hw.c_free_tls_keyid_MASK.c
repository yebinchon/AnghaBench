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
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct chtls_hws {int rxkey; int txkey; } ;
struct chtls_sock {struct chtls_hws tlshws; struct chtls_dev* cdev; struct net_device* egress_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  addr; } ;
struct chtls_dev {TYPE_2__ kmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  tls_key; } ;
struct adapter {TYPE_1__ chcr_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct adapter* FUNC2 (struct net_device*) ; 
 struct chtls_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct sock *sk)
{
	struct chtls_sock *csk = FUNC3(sk);
	struct net_device *dev = csk->egress_dev;
	struct chtls_dev *cdev = csk->cdev;
	struct chtls_hws *hws;
	struct adapter *adap;

	if (!cdev->kmap.addr)
		return;

	adap = FUNC2(dev);
	hws = &csk->tlshws;

	FUNC4(&cdev->kmap.lock);
	if (hws->rxkey >= 0) {
		FUNC0(hws->rxkey, cdev->kmap.addr);
		FUNC1(&adap->chcr_stats.tls_key);
		hws->rxkey = -1;
	}
	if (hws->txkey >= 0) {
		FUNC0(hws->txkey, cdev->kmap.addr);
		FUNC1(&adap->chcr_stats.tls_key);
		hws->txkey = -1;
	}
	FUNC5(&cdev->kmap.lock);
}