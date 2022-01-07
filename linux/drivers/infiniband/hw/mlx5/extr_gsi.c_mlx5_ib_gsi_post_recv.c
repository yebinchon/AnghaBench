
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_gsi_qp {int rx_qp; } ;
struct ib_recv_wr {int dummy; } ;
struct ib_qp {int dummy; } ;


 struct mlx5_ib_gsi_qp* gsi_qp (struct ib_qp*) ;
 int ib_post_recv (int ,struct ib_recv_wr const*,struct ib_recv_wr const**) ;

int mlx5_ib_gsi_post_recv(struct ib_qp *qp, const struct ib_recv_wr *wr,
     const struct ib_recv_wr **bad_wr)
{
 struct mlx5_ib_gsi_qp *gsi = gsi_qp(qp);

 return ib_post_recv(gsi->rx_qp, wr, bad_wr);
}
