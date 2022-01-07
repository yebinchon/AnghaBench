
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cpl_wr_size {int dummy; } cpl_wr_size ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 size_t roundup (int,int) ;
 int skb_queue_purge (struct sk_buff_head*) ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;

__attribute__((used)) static int alloc_ep_skb_list(struct sk_buff_head *ep_skb_list, int size)
{
 struct sk_buff *skb;
 unsigned int i;
 size_t len;

 len = roundup(sizeof(union cpl_wr_size), 16);
 for (i = 0; i < size; i++) {
  skb = alloc_skb(len, GFP_KERNEL);
  if (!skb)
   goto fail;
  skb_queue_tail(ep_skb_list, skb);
 }
 return 0;
fail:
 skb_queue_purge(ep_skb_list);
 return -ENOMEM;
}
