
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int peer; scalar_t__ (* recv ) (int ,struct sk_buff*) ;} ;
struct manager {int lastid; int options; TYPE_1__ ch; int deact; int sendq; } ;


 int EV_UI ;
 int MGR_PH_ACTIVE ;
 int MGR_PH_NOTREADY ;
 int MISDN_ID_NONE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int mISDN_FsmEvent (int *,int ,int *) ;
 int mISDN_HEAD_ID (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ stub1 (int ,struct sk_buff*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
do_send(struct manager *mgr)
{
 if (!test_bit(MGR_PH_ACTIVE, &mgr->options))
  return;

 if (!test_and_set_bit(MGR_PH_NOTREADY, &mgr->options)) {
  struct sk_buff *skb = skb_dequeue(&mgr->sendq);

  if (!skb) {
   test_and_clear_bit(MGR_PH_NOTREADY, &mgr->options);
   return;
  }
  mgr->lastid = mISDN_HEAD_ID(skb);
  mISDN_FsmEvent(&mgr->deact, EV_UI, ((void*)0));
  if (mgr->ch.recv(mgr->ch.peer, skb)) {
   dev_kfree_skb(skb);
   test_and_clear_bit(MGR_PH_NOTREADY, &mgr->options);
   mgr->lastid = MISDN_ID_NONE;
  }
 }
}
