
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_rwq {scalar_t__ wqe_count; int log_rq_size; int wqe_shift; int log_rq_stride; int buf_size; } ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_create_wq {int rq_wqe_shift; scalar_t__ rq_wqe_count; } ;
struct ib_wq_init_attr {int max_wr; } ;


 int EINVAL ;
 int MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ check_shl_overflow (scalar_t__,int ,int *) ;
 int ilog2 (scalar_t__) ;
 int log_max_wq_sz ;

__attribute__((used)) static int set_user_rq_size(struct mlx5_ib_dev *dev,
       struct ib_wq_init_attr *wq_init_attr,
       struct mlx5_ib_create_wq *ucmd,
       struct mlx5_ib_rwq *rwq)
{

 if (wq_init_attr->max_wr > (1 << MLX5_CAP_GEN(dev->mdev, log_max_wq_sz)))
  return -EINVAL;

 if (!ucmd->rq_wqe_count)
  return -EINVAL;

 rwq->wqe_count = ucmd->rq_wqe_count;
 rwq->wqe_shift = ucmd->rq_wqe_shift;
 if (check_shl_overflow(rwq->wqe_count, rwq->wqe_shift, &rwq->buf_size))
  return -EINVAL;

 rwq->log_rq_stride = rwq->wqe_shift;
 rwq->log_rq_size = ilog2(rwq->wqe_count);
 return 0;
}
