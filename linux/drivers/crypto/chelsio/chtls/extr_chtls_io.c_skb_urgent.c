
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ULPCB_FLAG_URG ;
 TYPE_1__* ULP_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static bool skb_urgent(struct sk_buff *skb)
{
 return ULP_SKB_CB(skb)->flags & ULPCB_FLAG_URG;
}
