
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 int pr_err (char*) ;

__attribute__((used)) static void act_open_req_arp_failure(struct t3cdev *dev, struct sk_buff *skb)
{
 pr_err("ARP failure during connect\n");
 kfree_skb(skb);
}
