
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int dummy; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_RELEASE_CNF ;
 int l2up (struct layer2*,int ,struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void
l2_release(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 skb_trim(skb, 0);
 l2up(l2, DL_RELEASE_CNF, skb);
}
