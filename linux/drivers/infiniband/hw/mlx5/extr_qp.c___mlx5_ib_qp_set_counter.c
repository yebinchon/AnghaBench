
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rdma_counter {int id; } ;
struct mlx5_qp_context {int qp_counter_set_usr_page; } ;
struct mlx5_ib_qp_base {int mqp; } ;
struct TYPE_2__ {struct mlx5_ib_qp_base base; } ;
struct mlx5_ib_qp {TYPE_1__ trans_qp; scalar_t__ port; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_qp {int device; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_CMD_OP_RTS2RTS_QP ;
 int MLX5_QP_OPTPAR_COUNTER_SET_ID ;
 int cpu_to_be32 (int) ;
 int mlx5_core_qp_modify (int ,int ,int ,struct mlx5_qp_context*,int *) ;
 int mlx5_ib_get_counters_id (struct mlx5_ib_dev*,scalar_t__) ;
 int rts2rts_qp_counters_set_id ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_qp* to_mqp (struct ib_qp*) ;

__attribute__((used)) static int __mlx5_ib_qp_set_counter(struct ib_qp *qp,
        struct rdma_counter *counter)
{
 struct mlx5_ib_dev *dev = to_mdev(qp->device);
 struct mlx5_ib_qp *mqp = to_mqp(qp);
 struct mlx5_qp_context context = {};
 struct mlx5_ib_qp_base *base;
 u32 set_id;

 if (!MLX5_CAP_GEN(dev->mdev, rts2rts_qp_counters_set_id))
  return 0;

 if (counter)
  set_id = counter->id;
 else
  set_id = mlx5_ib_get_counters_id(dev, mqp->port - 1);

 base = &mqp->trans_qp.base;
 context.qp_counter_set_usr_page &= cpu_to_be32(0xffffff);
 context.qp_counter_set_usr_page |= cpu_to_be32(set_id << 24);
 return mlx5_core_qp_modify(dev->mdev,
       MLX5_CMD_OP_RTS2RTS_QP,
       MLX5_QP_OPTPAR_COUNTER_SET_ID,
       &context, &base->mqp);
}
