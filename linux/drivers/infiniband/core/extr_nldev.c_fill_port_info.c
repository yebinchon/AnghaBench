
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int name; int ifindex; } ;
struct net {int dummy; } ;
struct ib_port_attr {int port_cap_flags; int subnet_prefix; int phys_state; int state; int lmc; int sm_lid; int lid; scalar_t__ port_cap_flags2; } ;
struct ib_device {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int EMSGSIZE ;
 int RDMA_NLDEV_ATTR_CAP_FLAGS ;
 int RDMA_NLDEV_ATTR_LID ;
 int RDMA_NLDEV_ATTR_LMC ;
 int RDMA_NLDEV_ATTR_NDEV_INDEX ;
 int RDMA_NLDEV_ATTR_NDEV_NAME ;
 int RDMA_NLDEV_ATTR_PAD ;
 int RDMA_NLDEV_ATTR_PORT_INDEX ;
 int RDMA_NLDEV_ATTR_PORT_PHYS_STATE ;
 int RDMA_NLDEV_ATTR_PORT_STATE ;
 int RDMA_NLDEV_ATTR_SM_LID ;
 int RDMA_NLDEV_ATTR_SUBNET_PREFIX ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 scalar_t__ fill_nldev_handle (struct sk_buff*,struct ib_device*) ;
 struct net_device* ib_device_get_netdev (struct ib_device*,int ) ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 scalar_t__ net_eq (int ,struct net const*) ;
 int nla_put_string (struct sk_buff*,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 scalar_t__ rdma_protocol_ib (struct ib_device*,int ) ;

__attribute__((used)) static int fill_port_info(struct sk_buff *msg,
     struct ib_device *device, u32 port,
     const struct net *net)
{
 struct net_device *netdev = ((void*)0);
 struct ib_port_attr attr;
 int ret;
 u64 cap_flags = 0;

 if (fill_nldev_handle(msg, device))
  return -EMSGSIZE;

 if (nla_put_u32(msg, RDMA_NLDEV_ATTR_PORT_INDEX, port))
  return -EMSGSIZE;

 ret = ib_query_port(device, port, &attr);
 if (ret)
  return ret;

 if (rdma_protocol_ib(device, port)) {
  BUILD_BUG_ON((sizeof(attr.port_cap_flags) +
    sizeof(attr.port_cap_flags2)) > sizeof(u64));
  cap_flags = attr.port_cap_flags |
   ((u64)attr.port_cap_flags2 << 32);
  if (nla_put_u64_64bit(msg, RDMA_NLDEV_ATTR_CAP_FLAGS,
          cap_flags, RDMA_NLDEV_ATTR_PAD))
   return -EMSGSIZE;
  if (nla_put_u64_64bit(msg, RDMA_NLDEV_ATTR_SUBNET_PREFIX,
          attr.subnet_prefix, RDMA_NLDEV_ATTR_PAD))
   return -EMSGSIZE;
  if (nla_put_u32(msg, RDMA_NLDEV_ATTR_LID, attr.lid))
   return -EMSGSIZE;
  if (nla_put_u32(msg, RDMA_NLDEV_ATTR_SM_LID, attr.sm_lid))
   return -EMSGSIZE;
  if (nla_put_u8(msg, RDMA_NLDEV_ATTR_LMC, attr.lmc))
   return -EMSGSIZE;
 }
 if (nla_put_u8(msg, RDMA_NLDEV_ATTR_PORT_STATE, attr.state))
  return -EMSGSIZE;
 if (nla_put_u8(msg, RDMA_NLDEV_ATTR_PORT_PHYS_STATE, attr.phys_state))
  return -EMSGSIZE;

 netdev = ib_device_get_netdev(device, port);
 if (netdev && net_eq(dev_net(netdev), net)) {
  ret = nla_put_u32(msg,
      RDMA_NLDEV_ATTR_NDEV_INDEX, netdev->ifindex);
  if (ret)
   goto out;
  ret = nla_put_string(msg,
         RDMA_NLDEV_ATTR_NDEV_NAME, netdev->name);
 }

out:
 if (netdev)
  dev_put(netdev);
 return ret;
}
