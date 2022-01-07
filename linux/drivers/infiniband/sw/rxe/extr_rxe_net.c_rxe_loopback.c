
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int rxe_rcv (struct sk_buff*) ;

void rxe_loopback(struct sk_buff *skb)
{
 rxe_rcv(skb);
}
