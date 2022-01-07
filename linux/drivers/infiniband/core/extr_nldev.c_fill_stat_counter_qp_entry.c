
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int RDMA_NLDEV_ATTR_RES_LQPN ;
 int RDMA_NLDEV_ATTR_RES_QP_ENTRY ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int fill_stat_counter_qp_entry(struct sk_buff *msg, u32 qpn)
{
 struct nlattr *entry_attr;

 entry_attr = nla_nest_start(msg, RDMA_NLDEV_ATTR_RES_QP_ENTRY);
 if (!entry_attr)
  return -EMSGSIZE;

 if (nla_put_u32(msg, RDMA_NLDEV_ATTR_RES_LQPN, qpn))
  goto err;

 nla_nest_end(msg, entry_attr);
 return 0;

err:
 nla_nest_cancel(msg, entry_attr);
 return -EMSGSIZE;
}
