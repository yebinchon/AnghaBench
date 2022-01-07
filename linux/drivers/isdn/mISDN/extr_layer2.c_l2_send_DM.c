
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int dummy; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DM ;
 int RSP ;
 int get_PollFlag (struct layer2*,struct sk_buff*) ;
 int send_uframe (struct layer2*,struct sk_buff*,int,int ) ;

__attribute__((used)) static void
l2_send_DM(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 send_uframe(l2, skb, DM | get_PollFlag(l2, skb), RSP);
}
