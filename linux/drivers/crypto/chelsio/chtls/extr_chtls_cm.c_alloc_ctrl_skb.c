
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int users; } ;


 int GFP_KERNEL ;
 int __GFP_NOFAIL ;
 int __skb_trim (struct sk_buff*,int ) ;
 struct sk_buff* alloc_skb (int,int) ;
 scalar_t__ likely (int) ;
 int refcount_add (int,int *) ;
 int skb_cloned (struct sk_buff*) ;
 int skb_shared (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *alloc_ctrl_skb(struct sk_buff *skb, int len)
{
 if (likely(skb && !skb_shared(skb) && !skb_cloned(skb))) {
  __skb_trim(skb, 0);
  refcount_add(2, &skb->users);
 } else {
  skb = alloc_skb(len, GFP_KERNEL | __GFP_NOFAIL);
 }
 return skb;
}
