
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_DEFAULT_SIZE ;
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ;
 int RDMA_NLDEV_ATTR_MAX ;
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ;
 int RDMA_NLDEV_CMD_GET ;
 int RDMA_NL_GET_TYPE (int ,int ) ;
 int RDMA_NL_NLDEV ;
 int fill_port_info (struct sk_buff*,struct ib_device*,int ,int ) ;
 struct ib_device* ib_device_get_by_index (int ,int ) ;
 int ib_device_put (struct ib_device*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nldev_policy ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int ,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int rdma_is_port_valid (struct ib_device*,int ) ;
 int rdma_nl_unicast (int ,struct sk_buff*,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int nldev_port_get_doit(struct sk_buff *skb, struct nlmsghdr *nlh,
          struct netlink_ext_ack *extack)
{
 struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
 struct ib_device *device;
 struct sk_buff *msg;
 u32 index;
 u32 port;
 int err;

 err = nlmsg_parse_deprecated(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
         nldev_policy, extack);
 if (err ||
     !tb[RDMA_NLDEV_ATTR_DEV_INDEX] ||
     !tb[RDMA_NLDEV_ATTR_PORT_INDEX])
  return -EINVAL;

 index = nla_get_u32(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
 device = ib_device_get_by_index(sock_net(skb->sk), index);
 if (!device)
  return -EINVAL;

 port = nla_get_u32(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
 if (!rdma_is_port_valid(device, port)) {
  err = -EINVAL;
  goto err;
 }

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  err = -ENOMEM;
  goto err;
 }

 nlh = nlmsg_put(msg, NETLINK_CB(skb).portid, nlh->nlmsg_seq,
   RDMA_NL_GET_TYPE(RDMA_NL_NLDEV, RDMA_NLDEV_CMD_GET),
   0, 0);

 err = fill_port_info(msg, device, port, sock_net(skb->sk));
 if (err)
  goto err_free;

 nlmsg_end(msg, nlh);
 ib_device_put(device);

 return rdma_nl_unicast(sock_net(skb->sk), msg, NETLINK_CB(skb).portid);

err_free:
 nlmsg_free(msg);
err:
 ib_device_put(device);
 return err;
}
