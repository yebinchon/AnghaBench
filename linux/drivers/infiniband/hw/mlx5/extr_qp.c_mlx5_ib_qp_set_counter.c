
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_counter {int dummy; } ;
struct mlx5_ib_qp {scalar_t__ state; int counter_pending; int mutex; } ;
struct ib_qp {struct rdma_counter* counter; } ;


 scalar_t__ IB_QPS_RESET ;
 scalar_t__ IB_QPS_RTS ;
 int __mlx5_ib_qp_set_counter (struct ib_qp*,struct rdma_counter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5_ib_qp* to_mqp (struct ib_qp*) ;

int mlx5_ib_qp_set_counter(struct ib_qp *qp, struct rdma_counter *counter)
{
 struct mlx5_ib_qp *mqp = to_mqp(qp);
 int err = 0;

 mutex_lock(&mqp->mutex);
 if (mqp->state == IB_QPS_RESET) {
  qp->counter = counter;
  goto out;
 }

 if (mqp->state == IB_QPS_RTS) {
  err = __mlx5_ib_qp_set_counter(qp, counter);
  if (!err)
   qp->counter = counter;

  goto out;
 }

 mqp->counter_pending = 1;
 qp->counter = counter;

out:
 mutex_unlock(&mqp->mutex);
 return err;
}
