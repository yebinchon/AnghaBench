
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int RDMA_NLDEV_CMD_GET ;
 int RDMA_NL_GET_TYPE (int ,int ) ;
 int RDMA_NL_NLDEV ;
 scalar_t__ fill_dev_info (struct sk_buff*,struct ib_device*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int _nldev_get_dumpit(struct ib_device *device,
        struct sk_buff *skb,
        struct netlink_callback *cb,
        unsigned int idx)
{
 int start = cb->args[0];
 struct nlmsghdr *nlh;

 if (idx < start)
  return 0;

 nlh = nlmsg_put(skb, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq,
   RDMA_NL_GET_TYPE(RDMA_NL_NLDEV, RDMA_NLDEV_CMD_GET),
   0, NLM_F_MULTI);

 if (fill_dev_info(skb, device)) {
  nlmsg_cancel(skb, nlh);
  goto out;
 }

 nlmsg_end(skb, nlh);

 idx++;

out: cb->args[0] = idx;
 return skb->len;
}
