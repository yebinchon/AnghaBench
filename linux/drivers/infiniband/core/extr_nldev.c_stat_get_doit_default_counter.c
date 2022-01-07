
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct sk_buff {int sk; } ;
struct rdma_hw_stats {int lock; int * names; scalar_t__* value; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_5__ {int (* get_hw_stats ) (struct ib_device*,struct rdma_hw_stats*,size_t,int ) ;int alloc_hw_stats; } ;
struct ib_device {TYPE_2__ ops; TYPE_1__* port_data; } ;
struct TYPE_6__ {int portid; } ;
struct TYPE_4__ {struct rdma_hw_stats* hw_stats; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_3__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_DEFAULT_SIZE ;
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ;
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ;
 int RDMA_NLDEV_ATTR_STAT_HWCOUNTERS ;
 int RDMA_NLDEV_CMD_STAT_GET ;
 int RDMA_NL_GET_TYPE (int ,int ) ;
 int RDMA_NL_NLDEV ;
 scalar_t__ fill_nldev_handle (struct sk_buff*,struct ib_device*) ;
 scalar_t__ fill_stat_hwcounter_entry (struct sk_buff*,int ,scalar_t__) ;
 struct ib_device* ib_device_get_by_index (int ,size_t) ;
 int ib_device_put (struct ib_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t nla_get_u32 (struct nlattr*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,size_t,size_t) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;
 scalar_t__ rdma_counter_get_hwstat_value (struct ib_device*,size_t,int) ;
 int rdma_is_port_valid (struct ib_device*,size_t) ;
 int rdma_nl_unicast (int ,struct sk_buff*,int ) ;
 int sock_net (int ) ;
 int stub1 (struct ib_device*,struct rdma_hw_stats*,size_t,int ) ;

__attribute__((used)) static int stat_get_doit_default_counter(struct sk_buff *skb,
      struct nlmsghdr *nlh,
      struct netlink_ext_ack *extack,
      struct nlattr *tb[])
{
 struct rdma_hw_stats *stats;
 struct nlattr *table_attr;
 struct ib_device *device;
 int ret, num_cnts, i;
 struct sk_buff *msg;
 u32 index, port;
 u64 v;

 if (!tb[RDMA_NLDEV_ATTR_DEV_INDEX] || !tb[RDMA_NLDEV_ATTR_PORT_INDEX])
  return -EINVAL;

 index = nla_get_u32(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
 device = ib_device_get_by_index(sock_net(skb->sk), index);
 if (!device)
  return -EINVAL;

 if (!device->ops.alloc_hw_stats || !device->ops.get_hw_stats) {
  ret = -EINVAL;
  goto err;
 }

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
      RDMA_NLDEV_CMD_STAT_GET),
   0, 0);

 if (fill_nldev_handle(msg, device) ||
     nla_put_u32(msg, RDMA_NLDEV_ATTR_PORT_INDEX, port)) {
  ret = -EMSGSIZE;
  goto err_msg;
 }

 stats = device->port_data ? device->port_data[port].hw_stats : ((void*)0);
 if (stats == ((void*)0)) {
  ret = -EINVAL;
  goto err_msg;
 }
 mutex_lock(&stats->lock);

 num_cnts = device->ops.get_hw_stats(device, stats, port, 0);
 if (num_cnts < 0) {
  ret = -EINVAL;
  goto err_stats;
 }

 table_attr = nla_nest_start(msg, RDMA_NLDEV_ATTR_STAT_HWCOUNTERS);
 if (!table_attr) {
  ret = -EMSGSIZE;
  goto err_stats;
 }
 for (i = 0; i < num_cnts; i++) {
  v = stats->value[i] +
   rdma_counter_get_hwstat_value(device, port, i);
  if (fill_stat_hwcounter_entry(msg, stats->names[i], v)) {
   ret = -EMSGSIZE;
   goto err_table;
  }
 }
 nla_nest_end(msg, table_attr);

 mutex_unlock(&stats->lock);
 nlmsg_end(msg, nlh);
 ib_device_put(device);
 return rdma_nl_unicast(sock_net(skb->sk), msg, NETLINK_CB(skb).portid);

err_table:
 nla_nest_cancel(msg, table_attr);
err_stats:
 mutex_unlock(&stats->lock);
err_msg:
 nlmsg_free(msg);
err:
 ib_device_put(device);
 return ret;
}
