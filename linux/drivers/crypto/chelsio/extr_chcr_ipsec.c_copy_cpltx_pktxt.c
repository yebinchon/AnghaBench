
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct sk_buff {size_t queue_mapping; int len; } ;
struct TYPE_4__ {void* desc; scalar_t__ stat; } ;
struct sge_eth_txq {int vlan_ins; TYPE_2__ q; } ;
struct port_info {size_t first_qset; int tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ipsec_sa_entry {scalar_t__ esn; } ;
struct cpl_tx_pkt_core {int ctrl1; void* len; void* pack; int ctrl0; } ;
struct TYPE_3__ {struct sge_eth_txq* ethtxq; } ;
struct adapter {int pf; TYPE_1__ sge; } ;


 int CPL_TX_PKT_XT ;
 size_t TXPKT_INTF_V (int ) ;
 int TXPKT_IPCSUM_DIS_F ;
 int TXPKT_L4CSUM_DIS_F ;
 size_t TXPKT_OPCODE_V (int ) ;
 size_t TXPKT_PF_V (int ) ;
 int TXPKT_VLAN_V (int ) ;
 int TXPKT_VLAN_VLD_F ;
 void* copy_esn_pktxt (struct sk_buff*,struct net_device*,void*,struct ipsec_sa_entry*) ;
 int cpu_to_be64 (int) ;
 int htonl (size_t) ;
 void* htons (int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

inline void *copy_cpltx_pktxt(struct sk_buff *skb,
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

 pi = netdev_priv(dev);
 adap = pi->adapter;
 qidx = skb->queue_mapping;
 q = &adap->sge.ethtxq[qidx + pi->first_qset];

 left = (void *)q->q.stat - pos;
 if (!left)
  pos = q->q.desc;

 cpl = (struct cpl_tx_pkt_core *)pos;

 cntrl = TXPKT_L4CSUM_DIS_F | TXPKT_IPCSUM_DIS_F;
 ctrl0 = TXPKT_OPCODE_V(CPL_TX_PKT_XT) | TXPKT_INTF_V(pi->tx_chan) |
          TXPKT_PF_V(adap->pf);
 if (skb_vlan_tag_present(skb)) {
  q->vlan_ins++;
  cntrl |= TXPKT_VLAN_VLD_F | TXPKT_VLAN_V(skb_vlan_tag_get(skb));
 }

 cpl->ctrl0 = htonl(ctrl0);
 cpl->pack = htons(0);
 cpl->len = htons(skb->len);
 cpl->ctrl1 = cpu_to_be64(cntrl);

 pos += sizeof(struct cpl_tx_pkt_core);

 if (sa_entry->esn)
  pos = copy_esn_pktxt(skb, dev, pos, sa_entry);
 return pos;
}
