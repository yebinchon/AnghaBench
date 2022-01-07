
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct pkt_gl {scalar_t__ tot_len; scalar_t__ va; } ;
struct cpl_rx_pkt {int dummy; } ;
struct cpl_pass_accept_req {int dummy; } ;
typedef int __be64 ;


 int GFP_ATOMIC ;
 int __skb_put (struct sk_buff*,scalar_t__) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,int const*,int) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *copy_gl_to_skb_pkt(const struct pkt_gl *gl,
       const __be64 *rsp,
       u32 pktshift)
{
 struct sk_buff *skb;





 skb = alloc_skb(gl->tot_len + sizeof(struct cpl_pass_accept_req)
   - pktshift, GFP_ATOMIC);
 if (unlikely(!skb))
  return ((void*)0);
 __skb_put(skb, gl->tot_len + sizeof(struct cpl_pass_accept_req)
     - pktshift);

 skb_copy_to_linear_data(skb, rsp, sizeof(struct cpl_rx_pkt));
 skb_copy_to_linear_data_offset(skb, sizeof(struct cpl_pass_accept_req)
           , gl->va + pktshift,
           gl->tot_len - pktshift);

 return skb;
}
