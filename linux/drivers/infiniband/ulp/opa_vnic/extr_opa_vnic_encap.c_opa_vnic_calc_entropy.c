
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;


 int skb_get_hash (struct sk_buff*) ;

u8 opa_vnic_calc_entropy(struct sk_buff *skb)
{
 u32 hash = skb_get_hash(skb);


 hash ^= hash >> 8;
 hash ^= hash >> 16;


 return (u8)(hash & 0xFF);
}
