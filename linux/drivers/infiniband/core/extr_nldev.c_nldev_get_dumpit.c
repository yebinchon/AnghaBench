
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int _nldev_get_dumpit ;
 int ib_enum_all_devs (int ,struct sk_buff*,struct netlink_callback*) ;

__attribute__((used)) static int nldev_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb)
{




 return ib_enum_all_devs(_nldev_get_dumpit, skb, cb);
}
