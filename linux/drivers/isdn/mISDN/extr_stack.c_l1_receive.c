
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mISDNchannel {int st; } ;


 int ENODEV ;
 int __net_timestamp (struct sk_buff*) ;
 int _queue_message (int ,struct sk_buff*) ;

__attribute__((used)) static int
l1_receive(struct mISDNchannel *ch, struct sk_buff *skb)
{
 if (!ch->st)
  return -ENODEV;
 __net_timestamp(skb);
 _queue_message(ch->st, skb);
 return 0;
}
