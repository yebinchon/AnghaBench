
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int dummy; } ;
struct mlx4_eqe {int dummy; } ;


 int GET_BLK_PTR_FROM_EQE (struct mlx4_eqe*) ;
 int GET_MASK_FROM_EQE (struct mlx4_eqe*) ;
 int __propagate_pkey_ev (struct mlx4_ib_dev*,int,int ,int ) ;

__attribute__((used)) static void propagate_pkey_ev(struct mlx4_ib_dev *dev, int port_num,
         struct mlx4_eqe *eqe)
{
 __propagate_pkey_ev(dev, port_num, GET_BLK_PTR_FROM_EQE(eqe),
       GET_MASK_FROM_EQE(eqe));
}
