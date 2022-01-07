
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;


 int sgl_len (unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static int data_sgl_len(const struct sk_buff *skb)
{
 unsigned int cnt;

 cnt = skb_shinfo(skb)->nr_frags;
 return sgl_len(cnt) * 8;
}
