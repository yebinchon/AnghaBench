
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rdma_hw_stats {int dummy; } ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_counters {scalar_t__ num_ext_ppcnt_counters; scalar_t__ num_cong_counters; scalar_t__ num_q_counters; int names; } ;
struct ib_device {int dummy; } ;


 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 struct mlx5_ib_counters* get_counters (struct mlx5_ib_dev*,scalar_t__) ;
 int is_mdev_switchdev_mode (int ) ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int ,scalar_t__,int ) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct rdma_hw_stats *mlx5_ib_alloc_hw_stats(struct ib_device *ibdev,
          u8 port_num)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 const struct mlx5_ib_counters *cnts;
 bool is_switchdev = is_mdev_switchdev_mode(dev->mdev);

 if ((is_switchdev && port_num) || (!is_switchdev && !port_num))
  return ((void*)0);

 cnts = get_counters(dev, port_num - 1);

 return rdma_alloc_hw_stats_struct(cnts->names,
       cnts->num_q_counters +
       cnts->num_cong_counters +
       cnts->num_ext_ppcnt_counters,
       RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
