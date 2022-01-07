
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_hw_stats {int dummy; } ;
struct mlx4_ib_diag_counters {int num_counters; int name; } ;
struct mlx4_ib_dev {struct mlx4_ib_diag_counters* diag_counters; } ;
struct ib_device {int dummy; } ;


 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,int ,int ) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct rdma_hw_stats *mlx4_ib_alloc_hw_stats(struct ib_device *ibdev,
          u8 port_num)
{
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 struct mlx4_ib_diag_counters *diag = dev->diag_counters;

 if (!diag[!!port_num].name)
  return ((void*)0);

 return rdma_alloc_hw_stats_struct(diag[!!port_num].name,
       diag[!!port_num].num_counters,
       RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
