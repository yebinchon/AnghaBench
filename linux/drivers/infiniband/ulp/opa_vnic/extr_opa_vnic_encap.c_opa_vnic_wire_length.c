
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; } ;


 int OPA_VNIC_ICRC_TAIL_LEN ;

__attribute__((used)) static inline int opa_vnic_wire_length(struct sk_buff *skb)
{
 u32 pad_len;


 pad_len = -(skb->len + OPA_VNIC_ICRC_TAIL_LEN) & 0x7;
 pad_len += OPA_VNIC_ICRC_TAIL_LEN;

 return (skb->len + pad_len) >> 3;
}
