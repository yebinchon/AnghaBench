
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int HFI1_VNIC_MAX_PAD ;
 unsigned char OPA_VNIC_ICRC_TAIL_LEN ;

__attribute__((used)) static inline void hfi1_vnic_update_pad(unsigned char *pad, u8 plen)
{
 pad[HFI1_VNIC_MAX_PAD - 1] = plen - OPA_VNIC_ICRC_TAIL_LEN;
}
