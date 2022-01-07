
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; int T203; int t203; scalar_t__ sow; scalar_t__ vr; scalar_t__ va; scalar_t__ vs; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_ESTABLISH_IND ;
 int EV_L2_T203 ;
 int MDL_STATUS_UP_IND ;
 int RSP ;
 int ST_L2_7 ;
 int UA ;
 int clear_exception (struct layer2*) ;
 int get_PollFlag (struct layer2*,struct sk_buff*) ;
 int l2_tei (struct layer2*,int ,int ) ;
 int l2up (struct layer2*,int ,struct sk_buff*) ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int send_uframe (struct layer2*,int *,int,int ) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void
l2_start_multi(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 l2->vs = 0;
 l2->va = 0;
 l2->vr = 0;
 l2->sow = 0;
 clear_exception(l2);
 send_uframe(l2, ((void*)0), UA | get_PollFlag(l2, skb), RSP);
 mISDN_FsmChangeState(fi, ST_L2_7);
 mISDN_FsmAddTimer(&l2->t203, l2->T203, EV_L2_T203, ((void*)0), 3);
 skb_trim(skb, 0);
 l2up(l2, DL_ESTABLISH_IND, skb);
 if (l2->tm)
  l2_tei(l2, MDL_STATUS_UP_IND, 0);
}
