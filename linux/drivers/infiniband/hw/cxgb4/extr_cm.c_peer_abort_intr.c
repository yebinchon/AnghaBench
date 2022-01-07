
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cpl_abort_req_rss {struct c4iw_ep* status; } ;
struct TYPE_2__ {int wr_waitp; int state; } ;
struct c4iw_ep {TYPE_1__ com; struct c4iw_ep* hwtid; } ;
struct c4iw_dev {int dummy; } ;


 int ECONNRESET ;
 unsigned int GET_TID (struct cpl_abort_req_rss*) ;
 int c4iw_wake_up_noref (int ,int ) ;
 struct cpl_abort_req_rss* cplhdr (struct sk_buff*) ;
 scalar_t__ cxgb_is_neg_adv (struct c4iw_ep*) ;
 struct c4iw_ep* get_ep_from_tid (struct c4iw_dev*,unsigned int) ;
 int kfree_skb (struct sk_buff*) ;
 int neg_adv_str (struct c4iw_ep*) ;
 int pr_debug (char*,struct c4iw_ep*,struct c4iw_ep*,int ) ;
 int pr_warn (char*,unsigned int) ;
 int sched (struct c4iw_dev*,struct sk_buff*) ;

__attribute__((used)) static int peer_abort_intr(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct cpl_abort_req_rss *req = cplhdr(skb);
 struct c4iw_ep *ep;
 unsigned int tid = GET_TID(req);

 ep = get_ep_from_tid(dev, tid);

 if (!ep) {
  pr_warn("Abort on non-existent endpoint, tid %d\n", tid);
  kfree_skb(skb);
  return 0;
 }
 if (cxgb_is_neg_adv(req->status)) {
  pr_debug("Negative advice on abort- tid %u status %d (%s)\n",
    ep->hwtid, req->status,
    neg_adv_str(req->status));
  goto out;
 }
 pr_debug("ep %p tid %u state %u\n", ep, ep->hwtid, ep->com.state);

 c4iw_wake_up_noref(ep->com.wr_waitp, -ECONNRESET);
out:
 sched(dev, skb);
 return 0;
}
