
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 int efa_stats_names ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,int ,int ) ;

struct rdma_hw_stats *efa_alloc_hw_stats(struct ib_device *ibdev, u8 port_num)
{
 return rdma_alloc_hw_stats_struct(efa_stats_names,
       ARRAY_SIZE(efa_stats_names),
       RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
