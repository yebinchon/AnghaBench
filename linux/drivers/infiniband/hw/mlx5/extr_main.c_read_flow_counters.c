
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_read_counters_attr {int * out; struct mlx5_fc* hw_cntrs_hndl; } ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_fc {int dummy; } ;
struct ib_device {int dummy; } ;


 size_t IB_COUNTER_BYTES ;
 size_t IB_COUNTER_PACKETS ;
 int mlx5_fc_query (int ,struct mlx5_fc*,int *,int *) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int read_flow_counters(struct ib_device *ibdev,
         struct mlx5_read_counters_attr *read_attr)
{
 struct mlx5_fc *fc = read_attr->hw_cntrs_hndl;
 struct mlx5_ib_dev *dev = to_mdev(ibdev);

 return mlx5_fc_query(dev->mdev, fc,
        &read_attr->out[IB_COUNTER_PACKETS],
        &read_attr->out[IB_COUNTER_BYTES]);
}
