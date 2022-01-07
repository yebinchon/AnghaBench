
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int flag; } ;
struct FsmInst {struct layer2* userdata; } ;


 int FLG_L3_INIT ;
 int establishlink (struct FsmInst*) ;
 int get_PollFlagFree (struct layer2*,struct sk_buff*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l2_reestablish(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 if (!get_PollFlagFree(l2, skb)) {
  establishlink(fi);
  test_and_set_bit(FLG_L3_INIT, &l2->flag);
 }
}
