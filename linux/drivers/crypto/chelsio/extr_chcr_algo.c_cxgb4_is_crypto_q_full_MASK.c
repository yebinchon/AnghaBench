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
struct sge_uld_txq_info {struct sge_uld_txq* uldtxq; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct sge_uld_txq {TYPE_1__ sendq; scalar_t__ full; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct sge_uld_txq_info** uld_txq_info; } ;
struct adapter {TYPE_2__ sge; } ;

/* Variables and functions */
 size_t CXGB4_TX_CRYPTO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, unsigned int idx)
{
	struct adapter *adap = FUNC2(dev);
	struct sge_uld_txq_info *txq_info =
		adap->sge.uld_txq_info[CXGB4_TX_CRYPTO];
	struct sge_uld_txq *txq;
	int ret = 0;

	FUNC0();
	txq = &txq_info->uldtxq[idx];
	FUNC3(&txq->sendq.lock);
	if (txq->full)
		ret = -1;
	FUNC4(&txq->sendq.lock);
	FUNC1();
	return ret;
}