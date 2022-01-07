
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int nlh; } ;


 int EINVAL ;
 int RDMA_NLDEV_ATTR_MAX ;

 size_t RDMA_NLDEV_ATTR_STAT_RES ;
 int nla_get_u32 (struct nlattr*) ;
 int nldev_policy ;
 int nldev_res_get_counter_dumpit (struct sk_buff*,struct netlink_callback*) ;
 int nlmsg_parse (int ,int ,struct nlattr**,int,int ,int *) ;

__attribute__((used)) static int nldev_stat_get_dumpit(struct sk_buff *skb,
     struct netlink_callback *cb)
{
 struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
 int ret;

 ret = nlmsg_parse(cb->nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
     nldev_policy, ((void*)0));
 if (ret || !tb[RDMA_NLDEV_ATTR_STAT_RES])
  return -EINVAL;

 switch (nla_get_u32(tb[RDMA_NLDEV_ATTR_STAT_RES])) {
 case 128:
  ret = nldev_res_get_counter_dumpit(skb, cb);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
