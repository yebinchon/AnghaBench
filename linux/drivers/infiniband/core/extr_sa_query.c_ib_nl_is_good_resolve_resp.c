
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;


 int LS_NLA_TYPE_MAX ;
 int RDMA_NL_LS_F_ERR ;
 int ib_nl_policy ;
 int nla_parse_deprecated (struct nlattr**,int,int ,int ,int ,int *) ;
 int nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_len (struct nlmsghdr const*) ;

__attribute__((used)) static inline int ib_nl_is_good_resolve_resp(const struct nlmsghdr *nlh)
{
 struct nlattr *tb[LS_NLA_TYPE_MAX];
 int ret;

 if (nlh->nlmsg_flags & RDMA_NL_LS_F_ERR)
  return 0;

 ret = nla_parse_deprecated(tb, LS_NLA_TYPE_MAX - 1, nlmsg_data(nlh),
       nlmsg_len(nlh), ib_nl_policy, ((void*)0));
 if (ret)
  return 0;

 return 1;
}
