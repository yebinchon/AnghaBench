
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_DEFAULT_SIZE ;
 int RDMA_NLDEV_ATTR_MAX ;
 int RDMA_NLDEV_CMD_SYS_GET ;
 int RDMA_NLDEV_SYS_ATTR_NETNS_MODE ;
 int RDMA_NL_GET_TYPE (int ,int ) ;
 int RDMA_NL_NLDEV ;
 scalar_t__ ib_devices_shared_netns ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nldev_policy ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_parse (struct nlmsghdr*,int ,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int rdma_nl_unicast (int ,struct sk_buff*,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int nldev_sys_get_doit(struct sk_buff *skb, struct nlmsghdr *nlh,
         struct netlink_ext_ack *extack)
{
 struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
 struct sk_buff *msg;
 int err;

 err = nlmsg_parse(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
     nldev_policy, extack);
 if (err)
  return err;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 nlh = nlmsg_put(msg, NETLINK_CB(skb).portid, nlh->nlmsg_seq,
   RDMA_NL_GET_TYPE(RDMA_NL_NLDEV,
      RDMA_NLDEV_CMD_SYS_GET),
   0, 0);

 err = nla_put_u8(msg, RDMA_NLDEV_SYS_ATTR_NETNS_MODE,
    (u8)ib_devices_shared_netns);
 if (err) {
  nlmsg_free(msg);
  return err;
 }
 nlmsg_end(msg, nlh);
 return rdma_nl_unicast(sock_net(skb->sk), msg, NETLINK_CB(skb).portid);
}
