
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_counter {int id; int stats; scalar_t__ port; int device; } ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_counters {int dummy; } ;


 struct mlx5_ib_counters* get_counters (struct mlx5_ib_dev*,scalar_t__) ;
 int mlx5_ib_query_q_counters (int ,struct mlx5_ib_counters const*,int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int mlx5_ib_counter_update_stats(struct rdma_counter *counter)
{
 struct mlx5_ib_dev *dev = to_mdev(counter->device);
 const struct mlx5_ib_counters *cnts =
  get_counters(dev, counter->port - 1);

 return mlx5_ib_query_q_counters(dev->mdev, cnts,
     counter->stats, counter->id);
}
