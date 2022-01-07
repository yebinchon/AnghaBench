
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch_rep {int dummy; } ;


 void* mlx5_ib_rep_to_dev (struct mlx5_eswitch_rep*) ;

__attribute__((used)) static void *mlx5_ib_vport_get_proto_dev(struct mlx5_eswitch_rep *rep)
{
 return mlx5_ib_rep_to_dev(rep);
}
