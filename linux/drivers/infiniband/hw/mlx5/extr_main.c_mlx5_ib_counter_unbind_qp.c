
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int dummy; } ;


 int mlx5_ib_qp_set_counter (struct ib_qp*,int *) ;

__attribute__((used)) static int mlx5_ib_counter_unbind_qp(struct ib_qp *qp)
{
 return mlx5_ib_qp_set_counter(qp, ((void*)0));
}
