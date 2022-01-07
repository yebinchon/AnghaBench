
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int rdma_nl_rcv_msg ;
 int rdma_nl_rcv_skb (struct sk_buff*,int *) ;

__attribute__((used)) static void rdma_nl_rcv(struct sk_buff *skb)
{
 rdma_nl_rcv_skb(skb, &rdma_nl_rcv_msg);
}
