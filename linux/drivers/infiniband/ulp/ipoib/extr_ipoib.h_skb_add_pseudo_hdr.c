
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IPOIB_HARD_LEN ;
 int IPOIB_PSEUDO_LEN ;
 int memset (char*,int ,int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 char* skb_push (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static inline void skb_add_pseudo_hdr(struct sk_buff *skb)
{
 char *data = skb_push(skb, IPOIB_PSEUDO_LEN);





 memset(data, 0, IPOIB_PSEUDO_LEN);
 skb_reset_mac_header(skb);
 skb_pull(skb, IPOIB_HARD_LEN);
}
