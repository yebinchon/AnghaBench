
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_DEFAULT_SIZE ;
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ;
 int RDMA_NLDEV_ATTR_MAX ;
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ;
 size_t RDMA_NLDEV_ATTR_RES_LQPN ;
 scalar_t__ RDMA_NLDEV_ATTR_RES_QP ;
 size_t RDMA_NLDEV_ATTR_STAT_COUNTER_ID ;
 size_t RDMA_NLDEV_ATTR_STAT_RES ;
 int RDMA_NLDEV_CMD_STAT_SET ;
 int RDMA_NL_GET_TYPE (int ,int ) ;
 int RDMA_NL_NLDEV ;
 scalar_t__ fill_nldev_handle (struct sk_buff*,struct ib_device*) ;
 struct ib_device* ib_device_get_by_index (int ,scalar_t__) ;
 int ib_device_put (struct ib_device*) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,size_t,scalar_t__) ;
 int nldev_policy ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_parse (struct nlmsghdr*,int ,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int rdma_counter_unbind_qpn (struct ib_device*,scalar_t__,scalar_t__,scalar_t__) ;
 int rdma_is_port_valid (struct ib_device*,scalar_t__) ;
 int rdma_nl_unicast (int ,struct sk_buff*,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int nldev_stat_del_doit(struct sk_buff *skb, struct nlmsghdr *nlh,
          struct netlink_ext_ack *extack)
{
 struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
 struct ib_device *device;
 struct sk_buff *msg;
 u32 index, port, qpn, cntn;
 int ret;

 ret = nlmsg_parse(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
     nldev_policy, extack);
 if (ret || !tb[RDMA_NLDEV_ATTR_STAT_RES] ||
     !tb[RDMA_NLDEV_ATTR_DEV_INDEX] || !tb[RDMA_NLDEV_ATTR_PORT_INDEX] ||
     !tb[RDMA_NLDEV_ATTR_STAT_COUNTER_ID] ||
     !tb[RDMA_NLDEV_ATTR_RES_LQPN])
  return -EINVAL;

 if (nla_get_u32(tb[RDMA_NLDEV_ATTR_STAT_RES]) != RDMA_NLDEV_ATTR_RES_QP)
  return -EINVAL;

 index = nla_get_u32(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
 device = ib_device_get_by_index(sock_net(skb->sk), index);
 if (!device)
  return -EINVAL;

 port = nla_get_u32(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
 if (!rdma_is_port_valid(device, port)) {
  ret = -EINVAL;
  goto err;
 }

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  ret = -ENOMEM;
  goto err;
 }
 nlh = nlmsg_put(msg, NETLINK_CB(skb).portid, nlh->nlmsg_seq,
   RDMA_NL_GET_TYPE(RDMA_NL_NLDEV,
      RDMA_NLDEV_CMD_STAT_SET),
   0, 0);

 cntn = nla_get_u32(tb[RDMA_NLDEV_ATTR_STAT_COUNTER_ID]);
 qpn = nla_get_u32(tb[RDMA_NLDEV_ATTR_RES_LQPN]);
 if (fill_nldev_handle(msg, device) ||
     nla_put_u32(msg, RDMA_NLDEV_ATTR_PORT_INDEX, port) ||
     nla_put_u32(msg, RDMA_NLDEV_ATTR_STAT_COUNTER_ID, cntn) ||
     nla_put_u32(msg, RDMA_NLDEV_ATTR_RES_LQPN, qpn)) {
  ret = -EMSGSIZE;
  goto err_fill;
 }

 ret = rdma_counter_unbind_qpn(device, port, qpn, cntn);
 if (ret)
  goto err_fill;

 nlmsg_end(msg, nlh);
 ib_device_put(device);
 return rdma_nl_unicast(sock_net(skb->sk), msg, NETLINK_CB(skb).portid);

err_fill:
 nlmsg_free(msg);
err:
 ib_device_put(device);
 return ret;
}
