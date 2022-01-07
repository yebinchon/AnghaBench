
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_dev {TYPE_2__* mdev; } ;
struct mlx5_frag_buf {int frags; } ;
struct mlx5_ib_cq_buf {int cqe_size; int nent; int fbc; struct mlx5_frag_buf frag_buf; } ;
struct TYPE_3__ {int numa_node; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 int ilog2 (int) ;
 int mlx5_frag_buf_alloc_node (TYPE_2__*,int,struct mlx5_frag_buf*,int ) ;
 int mlx5_init_fbc (int ,int,int,int *) ;

__attribute__((used)) static int alloc_cq_frag_buf(struct mlx5_ib_dev *dev,
        struct mlx5_ib_cq_buf *buf,
        int nent,
        int cqe_size)
{
 struct mlx5_frag_buf *frag_buf = &buf->frag_buf;
 u8 log_wq_stride = 6 + (cqe_size == 128 ? 1 : 0);
 u8 log_wq_sz = ilog2(cqe_size);
 int err;

 err = mlx5_frag_buf_alloc_node(dev->mdev,
           nent * cqe_size,
           frag_buf,
           dev->mdev->priv.numa_node);
 if (err)
  return err;

 mlx5_init_fbc(frag_buf->frags, log_wq_stride, log_wq_sz, &buf->fbc);

 buf->cqe_size = cqe_size;
 buf->nent = nent;

 return 0;
}
