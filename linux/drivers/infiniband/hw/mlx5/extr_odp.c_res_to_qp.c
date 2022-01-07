
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_qp {int dummy; } ;
struct mlx5_core_rsc_common {int dummy; } ;
struct mlx5_core_qp {int dummy; } ;


 struct mlx5_ib_qp* to_mibqp (struct mlx5_core_qp*) ;

__attribute__((used)) static inline struct mlx5_ib_qp *res_to_qp(struct mlx5_core_rsc_common *res)
{
 struct mlx5_core_qp *mqp = (struct mlx5_core_qp *)res;

 return to_mibqp(mqp);
}
