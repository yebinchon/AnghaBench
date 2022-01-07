
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 scalar_t__ BNXT_RE_NUM_COUNTERS ;
 int BUILD_BUG_ON (int) ;
 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 int bnxt_re_stat_name ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,scalar_t__,int ) ;

struct rdma_hw_stats *bnxt_re_ib_alloc_hw_stats(struct ib_device *ibdev,
      u8 port_num)
{
 BUILD_BUG_ON(ARRAY_SIZE(bnxt_re_stat_name) != BNXT_RE_NUM_COUNTERS);

 if (!port_num)
  return ((void*)0);

 return rdma_alloc_hw_stats_struct(bnxt_re_stat_name,
       ARRAY_SIZE(bnxt_re_stat_name),
       RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
