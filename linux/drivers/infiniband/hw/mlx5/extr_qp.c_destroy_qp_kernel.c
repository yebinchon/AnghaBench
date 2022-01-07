
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wrid; } ;
struct TYPE_3__ {int wr_data; int wrid; int w_list; int wqe_head; } ;
struct mlx5_ib_qp {int buf; int db; TYPE_2__ rq; TYPE_1__ sq; } ;
struct mlx5_ib_dev {int mdev; } ;


 int kvfree (int ) ;
 int mlx5_db_free (int ,int *) ;
 int mlx5_frag_buf_free (int ,int *) ;

__attribute__((used)) static void destroy_qp_kernel(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp)
{
 kvfree(qp->sq.wqe_head);
 kvfree(qp->sq.w_list);
 kvfree(qp->sq.wrid);
 kvfree(qp->sq.wr_data);
 kvfree(qp->rq.wrid);
 mlx5_db_free(dev->mdev, &qp->db);
 mlx5_frag_buf_free(dev->mdev, &qp->buf);
}
