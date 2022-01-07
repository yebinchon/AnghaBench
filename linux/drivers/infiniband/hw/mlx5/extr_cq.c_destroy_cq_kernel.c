
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_cq {int db; int buf; } ;


 int free_cq_buf (struct mlx5_ib_dev*,int *) ;
 int mlx5_db_free (int ,int *) ;

__attribute__((used)) static void destroy_cq_kernel(struct mlx5_ib_dev *dev, struct mlx5_ib_cq *cq)
{
 free_cq_buf(dev, &cq->buf);
 mlx5_db_free(dev->mdev, &cq->db);
}
