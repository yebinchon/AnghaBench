
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int user_ns; } ;
struct TYPE_4__ {scalar_t__ init_port; int disassociate_ucontext; } ;
struct ib_device {int dev; TYPE_1__ ops; } ;
struct TYPE_6__ {TYPE_2__* nsproxy; } ;
struct TYPE_5__ {int net_ns; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct net*) ;
 int PTR_ERR (struct net*) ;
 TYPE_3__* current ;
 int get_device (int *) ;
 struct net* get_net_ns_by_fd (int ) ;
 int ib_device_put (struct ib_device*) ;
 scalar_t__ ib_devices_shared_netns ;
 int netlink_ns_capable (struct sk_buff*,int ,int ) ;
 int put_device (int *) ;
 int put_net (struct net*) ;
 int rdma_dev_change_netns (struct ib_device*,int ,struct net*) ;

int ib_device_set_netns_put(struct sk_buff *skb,
       struct ib_device *dev, u32 ns_fd)
{
 struct net *net;
 int ret;

 net = get_net_ns_by_fd(ns_fd);
 if (IS_ERR(net)) {
  ret = PTR_ERR(net);
  goto net_err;
 }

 if (!netlink_ns_capable(skb, net->user_ns, CAP_NET_ADMIN)) {
  ret = -EPERM;
  goto ns_err;
 }







 if (!dev->ops.disassociate_ucontext || dev->ops.init_port ||
     ib_devices_shared_netns) {
  ret = -EOPNOTSUPP;
  goto ns_err;
 }

 get_device(&dev->dev);
 ib_device_put(dev);
 ret = rdma_dev_change_netns(dev, current->nsproxy->net_ns, net);
 put_device(&dev->dev);

 put_net(net);
 return ret;

ns_err:
 put_net(net);
net_err:
 ib_device_put(dev);
 return ret;
}
