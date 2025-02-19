
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_dev {TYPE_2__* mdev; } ;
struct mlx5_flow_spec {int match_criteria; int match_value; } ;
struct mlx5_eswitch_rep {int vport; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_3__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int fte_match_set_misc2 ;
 int metadata_reg_c_0 ;
 int misc_parameters ;
 int misc_parameters_2 ;
 int mlx5_eswitch_get_vport_metadata_for_match (struct mlx5_eswitch*,int ) ;
 scalar_t__ mlx5_eswitch_vport_match_metadata_enabled (struct mlx5_eswitch*) ;
 int source_port ;

__attribute__((used)) static void mlx5_ib_set_rule_source_port(struct mlx5_ib_dev *dev,
      struct mlx5_flow_spec *spec,
      struct mlx5_eswitch_rep *rep)
{
 struct mlx5_eswitch *esw = dev->mdev->priv.eswitch;
 void *misc;

 if (mlx5_eswitch_vport_match_metadata_enabled(esw)) {
  misc = MLX5_ADDR_OF(fte_match_param, spec->match_value,
        misc_parameters_2);

  MLX5_SET(fte_match_set_misc2, misc, metadata_reg_c_0,
    mlx5_eswitch_get_vport_metadata_for_match(esw,
           rep->vport));
  misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria,
        misc_parameters_2);

  MLX5_SET_TO_ONES(fte_match_set_misc2, misc, metadata_reg_c_0);
 } else {
  misc = MLX5_ADDR_OF(fte_match_param, spec->match_value,
        misc_parameters);

  MLX5_SET(fte_match_set_misc, misc, source_port, rep->vport);

  misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria,
        misc_parameters);

  MLX5_SET_TO_ONES(fte_match_set_misc, misc, source_port);
 }
}
