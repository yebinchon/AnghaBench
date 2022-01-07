
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_vnic_vport_info {int netdev; } ;


 int hfi1_vnic_sdma_write_avail (struct hfi1_vnic_vport_info*,int ) ;
 int netif_start_subqueue (int ,int ) ;
 int netif_stop_subqueue (int ,int ) ;

__attribute__((used)) static void hfi1_vnic_maybe_stop_tx(struct hfi1_vnic_vport_info *vinfo,
        u8 q_idx)
{
 netif_stop_subqueue(vinfo->netdev, q_idx);
 if (!hfi1_vnic_sdma_write_avail(vinfo, q_idx))
  return;

 netif_start_subqueue(vinfo->netdev, q_idx);
}
