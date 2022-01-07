
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_wqe_lso_seg {int header; } ;
struct TYPE_4__ {unsigned int max_gs; } ;
struct mlx4_ib_qp {int flags; TYPE_2__ sq; } ;
struct TYPE_3__ {unsigned int num_sge; } ;
struct ib_ud_wr {int hlen; int mss; int header; TYPE_1__ wr; } ;
typedef int __be32 ;


 unsigned int ALIGN (int,int) ;
 int EINVAL ;
 unsigned int MLX4_IB_CACHE_LINE_SIZE ;
 int MLX4_IB_QP_LSO ;
 int cpu_to_be32 (int) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int build_lso_seg(struct mlx4_wqe_lso_seg *wqe,
    const struct ib_ud_wr *wr, struct mlx4_ib_qp *qp,
    unsigned *lso_seg_len, __be32 *lso_hdr_sz, __be32 *blh)
{
 unsigned halign = ALIGN(sizeof *wqe + wr->hlen, 16);

 if (unlikely(halign > MLX4_IB_CACHE_LINE_SIZE))
  *blh = cpu_to_be32(1 << 6);

 if (unlikely(!(qp->flags & MLX4_IB_QP_LSO) &&
       wr->wr.num_sge > qp->sq.max_gs - (halign >> 4)))
  return -EINVAL;

 memcpy(wqe->header, wr->header, wr->hlen);

 *lso_hdr_sz = cpu_to_be32(wr->mss << 16 | wr->hlen);
 *lso_seg_len = halign;
 return 0;
}
