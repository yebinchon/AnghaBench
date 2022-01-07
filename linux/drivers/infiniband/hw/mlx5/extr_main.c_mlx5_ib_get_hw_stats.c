
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rdma_hw_stats {scalar_t__ value; } ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_counters {int num_q_counters; int num_cong_counters; int num_ext_ppcnt_counters; scalar_t__ offsets; int set_id; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ MLX5_CAP_PCAM_FEATURE (int ,int ) ;
 int cc_query_allowed ;
 struct mlx5_ib_counters* get_counters (struct mlx5_ib_dev*,scalar_t__) ;
 struct mlx5_core_dev* mlx5_ib_get_native_port_mdev (struct mlx5_ib_dev*,scalar_t__,scalar_t__*) ;
 int mlx5_ib_put_native_port_mdev (struct mlx5_ib_dev*,scalar_t__) ;
 int mlx5_ib_query_ext_ppcnt_counters (struct mlx5_ib_dev*,struct mlx5_ib_counters const*,struct rdma_hw_stats*) ;
 int mlx5_ib_query_q_counters (int ,struct mlx5_ib_counters const*,struct rdma_hw_stats*,int ) ;
 int mlx5_lag_query_cong_counters (int ,scalar_t__,int,scalar_t__) ;
 int rx_icrc_encapsulated_counter ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_ib_get_hw_stats(struct ib_device *ibdev,
    struct rdma_hw_stats *stats,
    u8 port_num, int index)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 const struct mlx5_ib_counters *cnts = get_counters(dev, port_num - 1);
 struct mlx5_core_dev *mdev;
 int ret, num_counters;
 u8 mdev_port_num;

 if (!stats)
  return -EINVAL;

 num_counters = cnts->num_q_counters +
         cnts->num_cong_counters +
         cnts->num_ext_ppcnt_counters;


 ret = mlx5_ib_query_q_counters(dev->mdev, cnts, stats, cnts->set_id);
 if (ret)
  return ret;

 if (MLX5_CAP_PCAM_FEATURE(dev->mdev, rx_icrc_encapsulated_counter)) {
  ret = mlx5_ib_query_ext_ppcnt_counters(dev, cnts, stats);
  if (ret)
   return ret;
 }

 if (MLX5_CAP_GEN(dev->mdev, cc_query_allowed)) {
  mdev = mlx5_ib_get_native_port_mdev(dev, port_num,
          &mdev_port_num);
  if (!mdev) {




   goto done;
  }
  ret = mlx5_lag_query_cong_counters(dev->mdev,
         stats->value +
         cnts->num_q_counters,
         cnts->num_cong_counters,
         cnts->offsets +
         cnts->num_q_counters);

  mlx5_ib_put_native_port_mdev(dev, port_num);
  if (ret)
   return ret;
 }

done:
 return num_counters;
}
