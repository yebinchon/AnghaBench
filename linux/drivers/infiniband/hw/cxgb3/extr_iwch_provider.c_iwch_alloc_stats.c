
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ NR_COUNTERS ;
 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 int names ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,scalar_t__,int ) ;

__attribute__((used)) static struct rdma_hw_stats *iwch_alloc_stats(struct ib_device *ibdev,
           u8 port_num)
{
 BUILD_BUG_ON(ARRAY_SIZE(names) != NR_COUNTERS);


 if (port_num != 0)
  return ((void*)0);

 return rdma_alloc_hw_stats_struct(names, NR_COUNTERS,
       RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
