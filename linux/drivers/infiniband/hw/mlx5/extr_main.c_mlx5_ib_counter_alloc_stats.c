
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_hw_stats {int dummy; } ;
struct rdma_counter {scalar_t__ port; int device; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_counters {int num_q_counters; int names; } ;


 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 struct mlx5_ib_counters* get_counters (struct mlx5_ib_dev*,scalar_t__) ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static struct rdma_hw_stats *
mlx5_ib_counter_alloc_stats(struct rdma_counter *counter)
{
 struct mlx5_ib_dev *dev = to_mdev(counter->device);
 const struct mlx5_ib_counters *cnts =
  get_counters(dev, counter->port - 1);


 return rdma_alloc_hw_stats_struct(cnts->names,
       cnts->num_q_counters,
       RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
