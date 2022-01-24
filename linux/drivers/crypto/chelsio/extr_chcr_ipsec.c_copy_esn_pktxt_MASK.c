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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  size_t u32 ;
struct TYPE_6__ {scalar_t__ hi; } ;
struct xfrm_offload {TYPE_3__ seq; } ;
struct ulptx_idata {int /*<<< orphan*/  len; int /*<<< orphan*/  cmd_more; } ;
struct sk_buff {size_t queue_mapping; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {void* desc; scalar_t__ stat; } ;
struct sge_eth_txq {TYPE_2__ q; } ;
struct port_info {size_t first_qset; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ipsec_sa_entry {int dummy; } ;
struct ip_esp_hdr {int /*<<< orphan*/  seq_no; int /*<<< orphan*/  spi; } ;
struct chcr_ipsec_aadiv {int /*<<< orphan*/  iv; int /*<<< orphan*/  seq_no; int /*<<< orphan*/  spi; } ;
struct TYPE_4__ {struct sge_eth_txq* ethtxq; } ;
struct adapter {TYPE_1__ sge; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct ipsec_sa_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 struct port_info* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC10 (struct sk_buff*) ; 
 struct xfrm_offload* FUNC11 (struct sk_buff*) ; 

inline void *FUNC12(struct sk_buff *skb,
			    struct net_device *dev,
			    void *pos,
			    struct ipsec_sa_entry *sa_entry)
{
	struct chcr_ipsec_aadiv *aadiv;
	struct ulptx_idata *sc_imm;
	struct ip_esp_hdr *esphdr;
	struct xfrm_offload *xo;
	struct sge_eth_txq *q;
	struct adapter *adap;
	struct port_info *pi;
	__be64 seqno;
	u32 qidx;
	u32 seqlo;
	u8 *iv;
	int eoq;
	int len;

	pi = FUNC8(dev);
	adap = pi->adapter;
	qidx = skb->queue_mapping;
	q = &adap->sge.ethtxq[qidx + pi->first_qset];

	/* end of queue, reset pos to start of queue */
	eoq = (void *)q->q.stat - pos;
	if (!eoq)
		pos = q->q.desc;

	len = FUNC0(sizeof(struct chcr_ipsec_aadiv), 16) << 4;
	FUNC7(pos, 0, len);
	aadiv = (struct chcr_ipsec_aadiv *)pos;
	esphdr = (struct ip_esp_hdr *)FUNC10(skb);
	iv = FUNC10(skb) + sizeof(struct ip_esp_hdr);
	xo = FUNC11(skb);

	aadiv->spi = (esphdr->spi);
	seqlo = FUNC4(esphdr->seq_no);
	seqno = FUNC3(seqlo + ((u64)xo->seq.hi << 32));
	FUNC6(aadiv->seq_no, &seqno, 8);
	iv = FUNC10(skb) + sizeof(struct ip_esp_hdr);
	FUNC6(aadiv->iv, iv, 8);

	if (FUNC5(skb, sa_entry) && !FUNC9(skb)) {
		sc_imm = (struct ulptx_idata *)(pos +
			  (FUNC0(sizeof(struct chcr_ipsec_aadiv),
					sizeof(__be64)) << 3));
		sc_imm->cmd_more = FUNC1(0);
		sc_imm->len = FUNC2(skb->len);
	}
	pos += len;
	return pos;
}