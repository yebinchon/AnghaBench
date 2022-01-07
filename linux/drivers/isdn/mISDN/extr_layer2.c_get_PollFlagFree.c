
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int dummy; } ;
struct layer2 {int dummy; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int get_PollFlag (struct layer2*,struct sk_buff*) ;

inline u_char
get_PollFlagFree(struct layer2 *l2, struct sk_buff *skb)
{
 u_char PF;

 PF = get_PollFlag(l2, skb);
 dev_kfree_skb(skb);
 return PF;
}
