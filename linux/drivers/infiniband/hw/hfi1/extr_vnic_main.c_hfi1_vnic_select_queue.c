
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct sdma_engine {int this_idx; } ;
struct opa_vnic_skb_mdata {int vl; int entropy; } ;
struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int dd; } ;


 struct hfi1_vnic_vport_info* opa_vnic_dev_priv (struct net_device*) ;
 struct sdma_engine* sdma_select_engine_vl (int ,int ,int ) ;

__attribute__((used)) static u16 hfi1_vnic_select_queue(struct net_device *netdev,
      struct sk_buff *skb,
      struct net_device *sb_dev)
{
 struct hfi1_vnic_vport_info *vinfo = opa_vnic_dev_priv(netdev);
 struct opa_vnic_skb_mdata *mdata;
 struct sdma_engine *sde;

 mdata = (struct opa_vnic_skb_mdata *)skb->data;
 sde = sdma_select_engine_vl(vinfo->dd, mdata->entropy, mdata->vl);
 return sde->this_idx;
}
