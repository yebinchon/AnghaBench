
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct fw_flowc_wr {int dummy; } ;
struct chtls_sock {int txq_idx; } ;


 int CPL_PRIORITY_DATA ;
 int GFP_ATOMIC ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int memcpy (int ,struct fw_flowc_wr*,int) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int skb_set_queue_mapping (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *create_flowc_wr_skb(struct sock *sk,
        struct fw_flowc_wr *flowc,
        int flowclen)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct sk_buff *skb;

 skb = alloc_skb(flowclen, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);

 memcpy(__skb_put(skb, flowclen), flowc, flowclen);
 skb_set_queue_mapping(skb, (csk->txq_idx << 1) | CPL_PRIORITY_DATA);

 return skb;
}
