
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int dummy; } ;


 int PH_DATA_REQ ;
 int dev_kfree_skb (struct sk_buff*) ;
 int l2_newid (struct layer2*) ;
 scalar_t__ l2down (struct layer2*,int ,int ,struct sk_buff*) ;

__attribute__((used)) static inline void
enqueue_super(struct layer2 *l2, struct sk_buff *skb)
{
 if (l2down(l2, PH_DATA_REQ, l2_newid(l2), skb))
  dev_kfree_skb(skb);
}
