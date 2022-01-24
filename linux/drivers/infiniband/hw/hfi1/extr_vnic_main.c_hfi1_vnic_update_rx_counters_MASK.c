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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct opa_vnic_grp_stats {int /*<<< orphan*/  untagged; int /*<<< orphan*/  vlan; int /*<<< orphan*/  unicast; int /*<<< orphan*/  mcastbcast; } ;
struct opa_vnic_stats {TYPE_1__ netstats; struct opa_vnic_grp_stats rx_grp; } ;
struct hfi1_vnic_vport_info {struct opa_vnic_stats* stats; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_grp_stats*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct hfi1_vnic_vport_info *vinfo,
					 u8 q_idx, struct sk_buff *skb, int err)
{
	struct ethhdr *mac_hdr = (struct ethhdr *)skb->data;
	struct opa_vnic_stats *stats = &vinfo->stats[q_idx];
	struct opa_vnic_grp_stats *rx_grp = &stats->rx_grp;
	u16 vlan_tci;

	stats->netstats.rx_packets++;
	stats->netstats.rx_bytes += skb->len + ETH_FCS_LEN;

	FUNC3(rx_grp, skb->len);

	/* rest of the counts are for good packets only */
	if (FUNC2(err))
		return;

	if (FUNC1(mac_hdr->h_dest))
		rx_grp->mcastbcast++;
	else
		rx_grp->unicast++;

	if (!FUNC0(skb, &vlan_tci))
		rx_grp->vlan++;
	else
		rx_grp->untagged++;
}