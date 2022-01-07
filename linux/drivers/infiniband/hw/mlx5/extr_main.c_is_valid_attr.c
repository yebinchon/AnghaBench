
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct ib_flow_attr {int dummy; } ;


 scalar_t__ is_valid_ethertype (struct mlx5_core_dev*,struct ib_flow_attr const*,int) ;

__attribute__((used)) static bool is_valid_attr(struct mlx5_core_dev *mdev,
     const struct ib_flow_attr *flow_attr)
{
 return is_valid_ethertype(mdev, flow_attr, 0) &&
        is_valid_ethertype(mdev, flow_attr, 1);
}
