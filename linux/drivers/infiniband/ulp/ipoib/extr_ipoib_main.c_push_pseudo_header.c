
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipoib_pseudo_header {int hwaddr; } ;


 int INFINIBAND_ALEN ;
 int memcpy (int ,char const*,int ) ;
 struct ipoib_pseudo_header* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void push_pseudo_header(struct sk_buff *skb, const char *daddr)
{
 struct ipoib_pseudo_header *phdr;

 phdr = skb_push(skb, sizeof(*phdr));
 memcpy(phdr->hwaddr, daddr, INFINIBAND_ALEN);
}
