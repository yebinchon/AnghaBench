
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct rdma_ls_ip_resolve_header {int ifindex; } ;
struct rdma_dev_addr {int bound_dev_if; } ;
struct nlmsghdr {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int size ;


 scalar_t__ AF_INET ;
 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LS_NLA_TYPE_IPV4 ;
 int LS_NLA_TYPE_IPV6 ;
 scalar_t__ NLMSG_ALIGN (int) ;
 int NLM_F_REQUEST ;
 int RDMA_NLA_F_MANDATORY ;
 int RDMA_NL_GROUP_LS ;
 int RDMA_NL_LS ;
 int RDMA_NL_LS_OP_IP_RESOLVE ;
 void* ibnl_put_msg (struct sk_buff*,struct nlmsghdr**,int ,int ,int ,int ,int ) ;
 int init_net ;
 int nla_put (struct sk_buff*,int,size_t,void const*) ;
 int nla_total_size (int) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 int rdma_nl_multicast (int *,struct sk_buff*,int ,int ) ;
 struct rdma_ls_ip_resolve_header* skb_put (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int ib_nl_ip_send_msg(struct rdma_dev_addr *dev_addr,
        const void *daddr,
        u32 seq, u16 family)
{
 struct sk_buff *skb = ((void*)0);
 struct nlmsghdr *nlh;
 struct rdma_ls_ip_resolve_header *header;
 void *data;
 size_t size;
 int attrtype;
 int len;

 if (family == AF_INET) {
  size = sizeof(struct in_addr);
  attrtype = RDMA_NLA_F_MANDATORY | LS_NLA_TYPE_IPV4;
 } else {
  size = sizeof(struct in6_addr);
  attrtype = RDMA_NLA_F_MANDATORY | LS_NLA_TYPE_IPV6;
 }

 len = nla_total_size(sizeof(size));
 len += NLMSG_ALIGN(sizeof(*header));

 skb = nlmsg_new(len, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 data = ibnl_put_msg(skb, &nlh, seq, 0, RDMA_NL_LS,
       RDMA_NL_LS_OP_IP_RESOLVE, NLM_F_REQUEST);
 if (!data) {
  nlmsg_free(skb);
  return -ENODATA;
 }


 header = skb_put(skb, NLMSG_ALIGN(sizeof(*header)));
 header->ifindex = dev_addr->bound_dev_if;
 nla_put(skb, attrtype, size, daddr);


 nlmsg_end(skb, nlh);
 rdma_nl_multicast(&init_net, skb, RDMA_NL_GROUP_LS, GFP_KERNEL);




 return -ENODATA;
}
