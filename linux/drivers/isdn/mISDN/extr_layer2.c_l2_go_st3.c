
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct FsmInst {int dummy; } ;


 int ST_L2_3 ;
 int dev_kfree_skb (struct sk_buff*) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;

__attribute__((used)) static void
l2_go_st3(struct FsmInst *fi, int event, void *arg)
{
 dev_kfree_skb((struct sk_buff *)arg);
 mISDN_FsmChangeState(fi, ST_L2_3);
}
