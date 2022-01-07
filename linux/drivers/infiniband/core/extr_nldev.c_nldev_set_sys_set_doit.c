
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int RDMA_NLDEV_ATTR_MAX ;
 size_t RDMA_NLDEV_SYS_ATTR_NETNS_MODE ;
 int nla_get_u8 (struct nlattr*) ;
 int nldev_policy ;
 int nlmsg_parse (struct nlmsghdr*,int ,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int rdma_compatdev_set (int) ;

__attribute__((used)) static int nldev_set_sys_set_doit(struct sk_buff *skb, struct nlmsghdr *nlh,
      struct netlink_ext_ack *extack)
{
 struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
 u8 enable;
 int err;

 err = nlmsg_parse(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
     nldev_policy, extack);
 if (err || !tb[RDMA_NLDEV_SYS_ATTR_NETNS_MODE])
  return -EINVAL;

 enable = nla_get_u8(tb[RDMA_NLDEV_SYS_ATTR_NETNS_MODE]);

 if (enable > 1)
  return -EINVAL;

 err = rdma_compatdev_set(enable);
 return err;
}
