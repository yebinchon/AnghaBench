
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_counter {int id; int device; } ;
struct mlx5_ib_dev {int mdev; } ;


 int mlx5_core_dealloc_q_counter (int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int mlx5_ib_counter_dealloc(struct rdma_counter *counter)
{
 struct mlx5_ib_dev *dev = to_mdev(counter->device);

 return mlx5_core_dealloc_q_counter(dev->mdev, counter->id);
}
