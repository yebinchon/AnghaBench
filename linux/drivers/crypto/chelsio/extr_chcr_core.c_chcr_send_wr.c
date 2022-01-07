
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int cxgb4_crypto_send (int ,struct sk_buff*) ;

int chcr_send_wr(struct sk_buff *skb)
{
 return cxgb4_crypto_send(skb->dev, skb);
}
