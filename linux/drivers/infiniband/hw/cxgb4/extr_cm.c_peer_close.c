
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cpl_peer_close {int dummy; } ;
struct c4iw_qp_attributes {int next_state; } ;
struct TYPE_4__ {int state; int mutex; TYPE_2__* qp; int cm_id; int wr_waitp; int history; } ;
struct c4iw_ep {TYPE_1__ com; int hwtid; int dst; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_5__ {int rhp; } ;



 int C4IW_QP_ATTR_NEXT_STATE ;
 int C4IW_QP_STATE_CLOSING ;
 int C4IW_QP_STATE_IDLE ;


 int ECONNRESET ;

 unsigned int GET_TID (struct cpl_peer_close*) ;
 int GFP_KERNEL ;





 int PEER_CLOSE ;
 int WARN_ONCE (int,char*,int) ;
 int __state_set (TYPE_1__*,int) ;
 int c4iw_ep_disconnect (struct c4iw_ep*,int ,int ) ;
 int c4iw_modify_qp (int ,TYPE_2__*,int ,struct c4iw_qp_attributes*,int) ;
 int c4iw_put_ep (TYPE_1__*) ;
 int c4iw_wake_up_noref (int ,int) ;
 int close_complete_upcall (struct c4iw_ep*,int ) ;
 int connect_reply_upcall (struct c4iw_ep*,int) ;
 struct cpl_peer_close* cplhdr (struct sk_buff*) ;
 int dst_confirm (int ) ;
 struct c4iw_ep* get_ep_from_tid (struct c4iw_dev*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int peer_close_upcall (struct c4iw_ep*) ;
 int pr_debug (char*,struct c4iw_ep*,int ) ;
 int release_ep_resources (struct c4iw_ep*) ;
 int set_bit (int ,int *) ;
 int start_ep_timer (struct c4iw_ep*) ;
 int stop_ep_timer (struct c4iw_ep*) ;

__attribute__((used)) static int peer_close(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct cpl_peer_close *hdr = cplhdr(skb);
 struct c4iw_ep *ep;
 struct c4iw_qp_attributes attrs;
 int disconnect = 1;
 int release = 0;
 unsigned int tid = GET_TID(hdr);
 int ret;

 ep = get_ep_from_tid(dev, tid);
 if (!ep)
  return 0;

 pr_debug("ep %p tid %u\n", ep, ep->hwtid);
 dst_confirm(ep->dst);

 set_bit(PEER_CLOSE, &ep->com.history);
 mutex_lock(&ep->com.mutex);
 switch (ep->com.state) {
 case 128:
  __state_set(&ep->com, 135);
  break;
 case 129:
  __state_set(&ep->com, 135);
  connect_reply_upcall(ep, -ECONNRESET);
  break;
 case 130:







  __state_set(&ep->com, 135);
  pr_debug("waking up ep %p tid %u\n", ep, ep->hwtid);
  c4iw_wake_up_noref(ep->com.wr_waitp, -ECONNRESET);
  break;
 case 131:
  __state_set(&ep->com, 135);
  pr_debug("waking up ep %p tid %u\n", ep, ep->hwtid);
  c4iw_wake_up_noref(ep->com.wr_waitp, -ECONNRESET);
  break;
 case 133:
  start_ep_timer(ep);
  __state_set(&ep->com, 135);
  attrs.next_state = C4IW_QP_STATE_CLOSING;
  ret = c4iw_modify_qp(ep->com.qp->rhp, ep->com.qp,
           C4IW_QP_ATTR_NEXT_STATE, &attrs, 1);
  if (ret != -ECONNRESET) {
   peer_close_upcall(ep);
   disconnect = 1;
  }
  break;
 case 136:
  disconnect = 0;
  break;
 case 135:
  __state_set(&ep->com, 132);
  disconnect = 0;
  break;
 case 132:
  (void)stop_ep_timer(ep);
  if (ep->com.cm_id && ep->com.qp) {
   attrs.next_state = C4IW_QP_STATE_IDLE;
   c4iw_modify_qp(ep->com.qp->rhp, ep->com.qp,
           C4IW_QP_ATTR_NEXT_STATE, &attrs, 1);
  }
  close_complete_upcall(ep, 0);
  __state_set(&ep->com, 134);
  release = 1;
  disconnect = 0;
  break;
 case 134:
  disconnect = 0;
  break;
 default:
  WARN_ONCE(1, "Bad endpoint state %u\n", ep->com.state);
 }
 mutex_unlock(&ep->com.mutex);
 if (disconnect)
  c4iw_ep_disconnect(ep, 0, GFP_KERNEL);
 if (release)
  release_ep_resources(ep);
 c4iw_put_ep(&ep->com);
 return 0;
}
