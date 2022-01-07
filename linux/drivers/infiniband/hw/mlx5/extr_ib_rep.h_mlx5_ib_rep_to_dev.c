
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_dev {int dummy; } ;
struct mlx5_eswitch_rep {TYPE_1__* rep_data; } ;
struct TYPE_2__ {struct mlx5_ib_dev* priv; } ;


 size_t REP_IB ;

__attribute__((used)) static inline
struct mlx5_ib_dev *mlx5_ib_rep_to_dev(struct mlx5_eswitch_rep *rep)
{
 return rep->rep_data[REP_IB].priv;
}
