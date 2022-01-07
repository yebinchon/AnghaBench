
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int len; } ;
struct hfi1_vnic_rx_queue {int skbq; } ;


 int OPA_VNIC_ICRC_TAIL_LEN ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_trim (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct sk_buff *hfi1_vnic_get_skb(struct hfi1_vnic_rx_queue *rxq)
{
 unsigned char *pad_info;
 struct sk_buff *skb;

 skb = skb_dequeue(&rxq->skbq);
 if (unlikely(!skb))
  return ((void*)0);


 pad_info = skb->data + skb->len - 1;
 skb_trim(skb, (skb->len - OPA_VNIC_ICRC_TAIL_LEN -
         ((*pad_info) & 0x7)));

 return skb;
}
