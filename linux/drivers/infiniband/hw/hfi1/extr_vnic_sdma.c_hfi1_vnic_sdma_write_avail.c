
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct hfi1_vnic_vport_info {struct hfi1_vnic_sdma* sdma; } ;
struct hfi1_vnic_sdma {int state; } ;


 scalar_t__ HFI1_VNIC_SDMA_Q_ACTIVE ;
 scalar_t__ READ_ONCE (int ) ;

inline bool hfi1_vnic_sdma_write_avail(struct hfi1_vnic_vport_info *vinfo,
           u8 q_idx)
{
 struct hfi1_vnic_sdma *vnic_sdma = &vinfo->sdma[q_idx];

 return (READ_ONCE(vnic_sdma->state) == HFI1_VNIC_SDMA_Q_ACTIVE);
}
