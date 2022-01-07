
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int flag; int ui_queue; int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_RELEASE_IND ;
 int FLG_ESTAB_PEND ;
 int dev_kfree_skb (struct sk_buff*) ;
 int l2up (struct layer2*,int ,struct sk_buff*) ;
 int skb_queue_purge (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l2_st14_persistent_da(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 skb_queue_purge(&l2->i_queue);
 skb_queue_purge(&l2->ui_queue);
 if (test_and_clear_bit(FLG_ESTAB_PEND, &l2->flag))
  l2up(l2, DL_RELEASE_IND, skb);
 else
  dev_kfree_skb(skb);
}
