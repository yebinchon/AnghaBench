
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int EMSGSIZE ;
 scalar_t__ nla_put (struct sk_buff*,int,int,void*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;

int ibnl_put_attr(struct sk_buff *skb, struct nlmsghdr *nlh,
    int len, void *data, int type)
{
 if (nla_put(skb, type, len, data)) {
  nlmsg_cancel(skb, nlh);
  return -EMSGSIZE;
 }
 return 0;
}
