
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hsi_msg {int * destructor; struct sk_buff* context; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int hsi_free_msg (struct hsi_msg*) ;
 int pr_debug (char*,struct hsi_msg*,struct sk_buff*,struct sk_buff*) ;

__attribute__((used)) static void ssip_free_data(struct hsi_msg *msg)
{
 struct sk_buff *skb;

 skb = msg->context;
 pr_debug("free data: msg %p context %p skb %p\n", msg, msg->context,
        skb);
 msg->destructor = ((void*)0);
 dev_kfree_skb(skb);
 hsi_free_msg(msg);
}
