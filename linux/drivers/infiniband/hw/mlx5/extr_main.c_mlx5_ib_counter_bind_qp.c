
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rdma_counter {int id; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_qp {int device; } ;


 int MLX5_SHARED_RESOURCE_UID ;
 int mlx5_cmd_alloc_q_counter (int ,int *,int ) ;
 int mlx5_core_dealloc_q_counter (int ,int ) ;
 int mlx5_ib_qp_set_counter (struct ib_qp*,struct rdma_counter*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int mlx5_ib_counter_bind_qp(struct rdma_counter *counter,
       struct ib_qp *qp)
{
 struct mlx5_ib_dev *dev = to_mdev(qp->device);
 u16 cnt_set_id = 0;
 int err;

 if (!counter->id) {
  err = mlx5_cmd_alloc_q_counter(dev->mdev,
            &cnt_set_id,
            MLX5_SHARED_RESOURCE_UID);
  if (err)
   return err;
  counter->id = cnt_set_id;
 }

 err = mlx5_ib_qp_set_counter(qp, counter);
 if (err)
  goto fail_set_counter;

 return 0;

fail_set_counter:
 mlx5_core_dealloc_q_counter(dev->mdev, cnt_set_id);
 counter->id = 0;

 return err;
}
