
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; int i_queue; int t203; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_RELEASE_IND ;
 int MDL_STATUS_DOWN_IND ;
 int RSP ;
 int ST_L2_4 ;
 int UA ;
 int freewin (struct layer2*) ;
 int get_PollFlag (struct layer2*,struct sk_buff*) ;
 int l2_tei (struct layer2*,int ,int ) ;
 int lapb_dl_release_l2l3 (struct layer2*,int ) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int send_uframe (struct layer2*,struct sk_buff*,int,int ) ;
 int skb_queue_purge (int *) ;
 int stop_t200 (struct layer2*,int) ;

__attribute__((used)) static void
l2_stop_multi(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 mISDN_FsmChangeState(fi, ST_L2_4);
 mISDN_FsmDelTimer(&l2->t203, 3);
 stop_t200(l2, 4);

 send_uframe(l2, skb, UA | get_PollFlag(l2, skb), RSP);
 skb_queue_purge(&l2->i_queue);
 freewin(l2);
 lapb_dl_release_l2l3(l2, DL_RELEASE_IND);
 if (l2->tm)
  l2_tei(l2, MDL_STATUS_DOWN_IND, 0);
}
