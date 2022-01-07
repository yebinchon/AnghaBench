
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_flow_spec {int match_value; int match_criteria; } ;
struct TYPE_2__ {int bth_dst_qp; } ;


 void* MLX5_ADDR_OF (int ,int ,int ) ;
 scalar_t__ MLX5_CAP_FLOWTABLE_NIC_RX (int ,int ) ;
 int MLX5_SET (int ,void*,int ,int) ;
 int bth_dst_qp ;
 TYPE_1__ ft_field_support ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int misc_parameters ;

__attribute__((used)) static void set_underlay_qp(struct mlx5_ib_dev *dev,
       struct mlx5_flow_spec *spec,
       u32 underlay_qpn)
{
 void *misc_params_c = MLX5_ADDR_OF(fte_match_param,
        spec->match_criteria,
        misc_parameters);
 void *misc_params_v = MLX5_ADDR_OF(fte_match_param, spec->match_value,
        misc_parameters);

 if (underlay_qpn &&
     MLX5_CAP_FLOWTABLE_NIC_RX(dev->mdev,
          ft_field_support.bth_dst_qp)) {
  MLX5_SET(fte_match_set_misc,
    misc_params_v, bth_dst_qp, underlay_qpn);
  MLX5_SET(fte_match_set_misc,
    misc_params_c, bth_dst_qp, 0xffffff);
 }
}
