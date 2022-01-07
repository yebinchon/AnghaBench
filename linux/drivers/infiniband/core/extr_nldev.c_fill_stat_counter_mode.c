
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int qp_type; } ;
struct rdma_counter_mode {scalar_t__ mode; int mask; TYPE_1__ param; } ;
struct rdma_counter {struct rdma_counter_mode mode; } ;


 int EMSGSIZE ;
 int RDMA_COUNTER_MASK_QP_TYPE ;
 scalar_t__ RDMA_COUNTER_MODE_AUTO ;
 int RDMA_NLDEV_ATTR_RES_TYPE ;
 int RDMA_NLDEV_ATTR_STAT_MODE ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int fill_stat_counter_mode(struct sk_buff *msg,
      struct rdma_counter *counter)
{
 struct rdma_counter_mode *m = &counter->mode;

 if (nla_put_u32(msg, RDMA_NLDEV_ATTR_STAT_MODE, m->mode))
  return -EMSGSIZE;

 if (m->mode == RDMA_COUNTER_MODE_AUTO)
  if ((m->mask & RDMA_COUNTER_MASK_QP_TYPE) &&
      nla_put_u8(msg, RDMA_NLDEV_ATTR_RES_TYPE, m->param.qp_type))
   return -EMSGSIZE;

 return 0;
}
