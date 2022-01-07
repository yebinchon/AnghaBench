
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rdma_hw_stats {int num_counters; int * value; int * names; } ;
struct rdma_counter {struct rdma_hw_stats* stats; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int RDMA_NLDEV_ATTR_STAT_HWCOUNTERS ;
 scalar_t__ fill_stat_hwcounter_entry (struct sk_buff*,int ,int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int fill_stat_counter_hwcounters(struct sk_buff *msg,
     struct rdma_counter *counter)
{
 struct rdma_hw_stats *st = counter->stats;
 struct nlattr *table_attr;
 int i;

 table_attr = nla_nest_start(msg, RDMA_NLDEV_ATTR_STAT_HWCOUNTERS);
 if (!table_attr)
  return -EMSGSIZE;

 for (i = 0; i < st->num_counters; i++)
  if (fill_stat_hwcounter_entry(msg, st->names[i], st->value[i]))
   goto err;

 nla_nest_end(msg, table_attr);
 return 0;

err:
 nla_nest_cancel(msg, table_attr);
 return -EMSGSIZE;
}
