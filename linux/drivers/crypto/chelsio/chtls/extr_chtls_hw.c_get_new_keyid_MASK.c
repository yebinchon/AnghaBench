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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct chtls_hws {int rxkey; int txkey; } ;
struct chtls_sock {struct chtls_hws tlshws; struct chtls_dev* cdev; struct net_device* egress_dev; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  lock; int /*<<< orphan*/  addr; } ;
struct chtls_dev {TYPE_2__ kmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  tls_key; } ;
struct adapter {TYPE_1__ chcr_stats; } ;

/* Variables and functions */
 scalar_t__ TLS_RX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct chtls_sock *csk, u32 optname)
{
	struct net_device *dev = csk->egress_dev;
	struct chtls_dev *cdev = csk->cdev;
	struct chtls_hws *hws;
	struct adapter *adap;
	int keyid;

	adap = FUNC3(dev);
	hws = &csk->tlshws;

	FUNC4(&cdev->kmap.lock);
	keyid = FUNC2(cdev->kmap.addr, cdev->kmap.size);
	if (keyid < cdev->kmap.size) {
		FUNC0(keyid, cdev->kmap.addr);
		if (optname == TLS_RX)
			hws->rxkey = keyid;
		else
			hws->txkey = keyid;
		FUNC1(&adap->chcr_stats.tls_key);
	} else {
		keyid = -1;
	}
	FUNC5(&cdev->kmap.lock);
	return keyid;
}