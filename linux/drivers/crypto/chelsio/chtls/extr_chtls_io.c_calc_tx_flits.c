
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;


 unsigned int sgl_len (unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;
 scalar_t__ skb_tail_pointer (struct sk_buff const*) ;
 scalar_t__ skb_transport_header (struct sk_buff const*) ;

__attribute__((used)) static unsigned int calc_tx_flits(const struct sk_buff *skb,
      unsigned int immdlen)
{
 unsigned int flits, cnt;

 flits = immdlen / 8;
 cnt = skb_shinfo(skb)->nr_frags;
 if (skb_tail_pointer(skb) != skb_transport_header(skb))
  cnt++;
 return flits + sgl_len(cnt);
}
