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
typedef  int u64 ;
typedef  size_t u32 ;
struct sk_buff {size_t queue_mapping; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {void* desc; scalar_t__ stat; } ;
struct sge_eth_txq {int /*<<< orphan*/  vlan_ins; TYPE_2__ q; } ;
struct port_info {size_t first_qset; int /*<<< orphan*/  tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ipsec_sa_entry {scalar_t__ esn; } ;
struct cpl_tx_pkt_core {int /*<<< orphan*/  ctrl1; void* len; void* pack; int /*<<< orphan*/  ctrl0; } ;
struct TYPE_3__ {struct sge_eth_txq* ethtxq; } ;
struct adapter {int /*<<< orphan*/  pf; TYPE_1__ sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_TX_PKT_XT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int TXPKT_IPCSUM_DIS_F ; 
 int TXPKT_L4CSUM_DIS_F ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int TXPKT_VLAN_VLD_F ; 
 void* FUNC4 (struct sk_buff*,struct net_device*,void*,struct ipsec_sa_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 struct port_info* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 

inline void *FUNC11(struct sk_buff *skb,
			      struct net_device *dev,
			      void *pos,
			      struct ipsec_sa_entry *sa_entry)
{
	struct cpl_tx_pkt_core *cpl;
	struct sge_eth_txq *q;
	struct adapter *adap;
	struct port_info *pi;
	u32 ctrl0, qidx;
	u64 cntrl = 0;
	int left;

	pi = FUNC8(dev);
	adap = pi->adapter;
	qidx = skb->queue_mapping;
	q = &adap->sge.ethtxq[qidx + pi->first_qset];

	left = (void *)q->q.stat - pos;
	if (!left)
		pos = q->q.desc;

	cpl = (struct cpl_tx_pkt_core *)pos;

	cntrl = TXPKT_L4CSUM_DIS_F | TXPKT_IPCSUM_DIS_F;
	ctrl0 = FUNC1(CPL_TX_PKT_XT) | FUNC0(pi->tx_chan) |
			       FUNC2(adap->pf);
	if (FUNC10(skb)) {
		q->vlan_ins++;
		cntrl |= TXPKT_VLAN_VLD_F | FUNC3(FUNC9(skb));
	}

	cpl->ctrl0 = FUNC6(ctrl0);
	cpl->pack = FUNC7(0);
	cpl->len = FUNC7(skb->len);
	cpl->ctrl1 = FUNC5(cntrl);

	pos += sizeof(struct cpl_tx_pkt_core);
	/* Copy ESN info for HW */
	if (sa_entry->esn)
		pos = FUNC4(skb, dev, pos, sa_entry);
	return pos;
}