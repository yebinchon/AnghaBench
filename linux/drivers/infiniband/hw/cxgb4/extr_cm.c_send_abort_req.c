
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; int ep_skb_list; } ;
struct c4iw_ep {int l2t; TYPE_2__ com; int txq_idx; int hwtid; } ;
struct TYPE_3__ {int rdev; } ;


 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 int abort_arp_failure ;
 int c4iw_l2t_send (int *,struct sk_buff*,int ) ;
 int cxgb_mk_abort_req (struct sk_buff*,int ,int ,int ,struct c4iw_ep*,int ) ;
 int pr_debug (char*,struct c4iw_ep*,int ) ;
 int roundup (int,int) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static int send_abort_req(struct c4iw_ep *ep)
{
 u32 wrlen = roundup(sizeof(struct cpl_abort_req), 16);
 struct sk_buff *req_skb = skb_dequeue(&ep->com.ep_skb_list);

 pr_debug("ep %p tid %u\n", ep, ep->hwtid);
 if (WARN_ON(!req_skb))
  return -ENOMEM;

 cxgb_mk_abort_req(req_skb, wrlen, ep->hwtid, ep->txq_idx,
     ep, abort_arp_failure);

 return c4iw_l2t_send(&ep->com.dev->rdev, req_skb, ep->l2t);
}
