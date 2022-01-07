
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int flag; } ;
struct FsmInst {struct layer2* userdata; } ;


 int FLG_ACK_PEND ;
 int FLG_OWN_BUSY ;
 int RR ;
 int RSP ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enquiry_cr (struct layer2*,int ,int ,int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l2_clear_own_busy(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 if (!test_and_clear_bit(FLG_OWN_BUSY, &l2->flag)) {
  enquiry_cr(l2, RR, RSP, 0);
  test_and_clear_bit(FLG_ACK_PEND, &l2->flag);
 }
 dev_kfree_skb(skb);
}
