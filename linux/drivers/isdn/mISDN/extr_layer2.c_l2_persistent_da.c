
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; int t203; int ui_queue; int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_RELEASE_IND ;
 int MDL_STATUS_DOWN_IND ;
 int ST_L2_4 ;
 int freewin (struct layer2*) ;
 int l2_tei (struct layer2*,int ,int ) ;
 int l2up (struct layer2*,int ,struct sk_buff*) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int skb_queue_purge (int *) ;
 int stop_t200 (struct layer2*,int) ;

__attribute__((used)) static void
l2_persistent_da(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 skb_queue_purge(&l2->i_queue);
 skb_queue_purge(&l2->ui_queue);
 freewin(l2);
 stop_t200(l2, 19);
 mISDN_FsmDelTimer(&l2->t203, 19);
 l2up(l2, DL_RELEASE_IND, skb);
 mISDN_FsmChangeState(fi, ST_L2_4);
 if (l2->tm)
  l2_tei(l2, MDL_STATUS_DOWN_IND, 0);
}
