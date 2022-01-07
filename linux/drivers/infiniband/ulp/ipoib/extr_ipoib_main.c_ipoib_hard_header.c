
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_header {scalar_t__ reserved; int proto; } ;


 int IPOIB_HARD_LEN ;
 int htons (unsigned short) ;
 int push_pseudo_header (struct sk_buff*,void const*) ;
 struct ipoib_header* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int ipoib_hard_header(struct sk_buff *skb,
        struct net_device *dev,
        unsigned short type,
        const void *daddr,
        const void *saddr,
        unsigned int len)
{
 struct ipoib_header *header;

 header = skb_push(skb, sizeof(*header));

 header->proto = htons(type);
 header->reserved = 0;






 push_pseudo_header(skb, daddr);

 return IPOIB_HARD_LEN;
}
