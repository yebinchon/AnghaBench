
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_recv_wr {int dummy; } ;
struct ib_qp {int dummy; } ;


 int _mlx4_ib_post_recv (struct ib_qp*,struct ib_recv_wr const*,struct ib_recv_wr const**,int) ;

int mlx4_ib_post_recv(struct ib_qp *ibqp, const struct ib_recv_wr *wr,
        const struct ib_recv_wr **bad_wr)
{
 return _mlx4_ib_post_recv(ibqp, wr, bad_wr, 0);
}
