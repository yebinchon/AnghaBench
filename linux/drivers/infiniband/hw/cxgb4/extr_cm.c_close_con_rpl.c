
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cpl_close_con_rpl {int dummy; } ;
struct c4iw_qp_attributes {int next_state; } ;
struct TYPE_4__ {int state; int mutex; TYPE_2__* qp; int cm_id; int history; } ;
struct c4iw_ep {TYPE_1__ com; int hwtid; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_5__ {int rhp; } ;



 int C4IW_QP_ATTR_NEXT_STATE ;
 int C4IW_QP_STATE_IDLE ;
 int CLOSE_CON_RPL ;


 unsigned int GET_TID (struct cpl_close_con_rpl*) ;

 int WARN_ONCE (int,char*,int) ;
 int __state_set (TYPE_1__*,int) ;
 int c4iw_modify_qp (int ,TYPE_2__*,int ,struct c4iw_qp_attributes*,int) ;
 int c4iw_put_ep (TYPE_1__*) ;
 int close_complete_upcall (struct c4iw_ep*,int ) ;
 struct cpl_close_con_rpl* cplhdr (struct sk_buff*) ;
 struct c4iw_ep* get_ep_from_tid (struct c4iw_dev*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,struct c4iw_ep*,int ) ;
 int release_ep_resources (struct c4iw_ep*) ;
 int set_bit (int ,int *) ;
 int stop_ep_timer (struct c4iw_ep*) ;

__attribute__((used)) static int close_con_rpl(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct c4iw_ep *ep;
 struct c4iw_qp_attributes attrs;
 struct cpl_close_con_rpl *rpl = cplhdr(skb);
 int release = 0;
 unsigned int tid = GET_TID(rpl);

 ep = get_ep_from_tid(dev, tid);
 if (!ep)
  return 0;

 pr_debug("ep %p tid %u\n", ep, ep->hwtid);


 mutex_lock(&ep->com.mutex);
 set_bit(CLOSE_CON_RPL, &ep->com.history);
 switch (ep->com.state) {
 case 130:
  __state_set(&ep->com, 128);
  break;
 case 128:
  (void)stop_ep_timer(ep);
  if ((ep->com.cm_id) && (ep->com.qp)) {
   attrs.next_state = C4IW_QP_STATE_IDLE;
   c4iw_modify_qp(ep->com.qp->rhp,
          ep->com.qp,
          C4IW_QP_ATTR_NEXT_STATE,
          &attrs, 1);
  }
  close_complete_upcall(ep, 0);
  __state_set(&ep->com, 129);
  release = 1;
  break;
 case 131:
 case 129:
  break;
 default:
  WARN_ONCE(1, "Bad endpoint state %u\n", ep->com.state);
  break;
 }
 mutex_unlock(&ep->com.mutex);
 if (release)
  release_ep_resources(ep);
 c4iw_put_ep(&ep->com);
 return 0;
}
