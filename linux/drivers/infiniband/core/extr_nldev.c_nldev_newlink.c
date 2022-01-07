
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
struct sk_buff {int sk; } ;
struct rdma_link_ops {int (* newlink ) (char*,struct net_device*) ;} ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
typedef int ndev_name ;
typedef int ibdev_name ;


 int EINVAL ;
 int ENODEV ;
 int IB_DEVICE_NAME_MAX ;
 int IFNAMSIZ ;
 size_t RDMA_NLDEV_ATTR_DEV_NAME ;
 size_t RDMA_NLDEV_ATTR_LINK_TYPE ;
 int RDMA_NLDEV_ATTR_MAX ;
 size_t RDMA_NLDEV_ATTR_NDEV_NAME ;
 struct net_device* dev_get_by_name (int ,char*) ;
 int dev_put (struct net_device*) ;
 int down_read (int *) ;
 struct rdma_link_ops* link_ops_get (char*) ;
 int link_ops_rwsem ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 int nldev_policy ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int ,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int request_module (char*,char*) ;
 int sock_net (int ) ;
 scalar_t__ strchr (char*,char) ;
 int stub1 (char*,struct net_device*) ;
 int up_read (int *) ;

__attribute__((used)) static int nldev_newlink(struct sk_buff *skb, struct nlmsghdr *nlh,
     struct netlink_ext_ack *extack)
{
 struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
 char ibdev_name[IB_DEVICE_NAME_MAX];
 const struct rdma_link_ops *ops;
 char ndev_name[IFNAMSIZ];
 struct net_device *ndev;
 char type[IFNAMSIZ];
 int err;

 err = nlmsg_parse_deprecated(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
         nldev_policy, extack);
 if (err || !tb[RDMA_NLDEV_ATTR_DEV_NAME] ||
     !tb[RDMA_NLDEV_ATTR_LINK_TYPE] || !tb[RDMA_NLDEV_ATTR_NDEV_NAME])
  return -EINVAL;

 nla_strlcpy(ibdev_name, tb[RDMA_NLDEV_ATTR_DEV_NAME],
      sizeof(ibdev_name));
 if (strchr(ibdev_name, '%'))
  return -EINVAL;

 nla_strlcpy(type, tb[RDMA_NLDEV_ATTR_LINK_TYPE], sizeof(type));
 nla_strlcpy(ndev_name, tb[RDMA_NLDEV_ATTR_NDEV_NAME],
      sizeof(ndev_name));

 ndev = dev_get_by_name(sock_net(skb->sk), ndev_name);
 if (!ndev)
  return -ENODEV;

 down_read(&link_ops_rwsem);
 ops = link_ops_get(type);
 err = ops ? ops->newlink(ibdev_name, ndev) : -EINVAL;
 up_read(&link_ops_rwsem);
 dev_put(ndev);

 return err;
}
