
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct opa_vnic_grp_stats {int untagged; int vlan; int unicast; int mcastbcast; } ;
struct opa_vnic_stats {TYPE_1__ netstats; struct opa_vnic_grp_stats tx_grp; } ;
struct hfi1_vnic_vport_info {struct opa_vnic_stats* stats; } ;
struct ethhdr {int h_dest; } ;


 scalar_t__ ETH_FCS_LEN ;
 int __vlan_get_tag (struct sk_buff*,int *) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int update_len_counters (struct opa_vnic_grp_stats*,scalar_t__) ;

__attribute__((used)) static void hfi1_vnic_update_tx_counters(struct hfi1_vnic_vport_info *vinfo,
      u8 q_idx, struct sk_buff *skb, int err)
{
 struct ethhdr *mac_hdr = (struct ethhdr *)skb_mac_header(skb);
 struct opa_vnic_stats *stats = &vinfo->stats[q_idx];
 struct opa_vnic_grp_stats *tx_grp = &stats->tx_grp;
 u16 vlan_tci;

 stats->netstats.tx_packets++;
 stats->netstats.tx_bytes += skb->len + ETH_FCS_LEN;

 update_len_counters(tx_grp, skb->len);


 if (unlikely(err))
  return;

 if (is_multicast_ether_addr(mac_hdr->h_dest))
  tx_grp->mcastbcast++;
 else
  tx_grp->unicast++;

 if (!__vlan_get_tag(skb, &vlan_tci))
  tx_grp->vlan++;
 else
  tx_grp->untagged++;
}
