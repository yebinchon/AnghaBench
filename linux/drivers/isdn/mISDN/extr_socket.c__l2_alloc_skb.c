
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ L2_HEADER_LEN ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline struct sk_buff *
_l2_alloc_skb(unsigned int len, gfp_t gfp_mask)
{
 struct sk_buff *skb;

 skb = alloc_skb(len + L2_HEADER_LEN, gfp_mask);
 if (likely(skb))
  skb_reserve(skb, L2_HEADER_LEN);
 return skb;
}
