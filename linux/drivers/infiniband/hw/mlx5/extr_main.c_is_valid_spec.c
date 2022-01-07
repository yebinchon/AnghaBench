
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_act {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ VALID_SPEC_INVALID ;
 scalar_t__ is_valid_esp_aes_gcm (struct mlx5_core_dev*,struct mlx5_flow_spec const*,struct mlx5_flow_act const*,int) ;

__attribute__((used)) static bool is_valid_spec(struct mlx5_core_dev *mdev,
     const struct mlx5_flow_spec *spec,
     const struct mlx5_flow_act *flow_act,
     bool egress)
{

 return is_valid_esp_aes_gcm(mdev, spec, flow_act, egress) != VALID_SPEC_INVALID;
}
