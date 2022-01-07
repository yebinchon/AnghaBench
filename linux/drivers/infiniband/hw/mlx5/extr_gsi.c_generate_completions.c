
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct mlx5_ib_gsi_wr {int completed; int send_flags; int wc; } ;
struct TYPE_3__ {size_t max_send_wr; } ;
struct TYPE_4__ {struct ib_cq* send_cq; } ;
struct mlx5_ib_gsi_qp {size_t outstanding_ci; size_t outstanding_pi; scalar_t__ sq_sig_type; TYPE_1__ cap; struct mlx5_ib_gsi_wr* outstanding_wrs; TYPE_2__ ibqp; } ;
struct ib_cq {int dummy; } ;


 int IB_SEND_SIGNALED ;
 scalar_t__ IB_SIGNAL_ALL_WR ;
 int WARN_ON_ONCE (int ) ;
 int mlx5_ib_generate_wc (struct ib_cq*,int *) ;

__attribute__((used)) static void generate_completions(struct mlx5_ib_gsi_qp *gsi)
{
 struct ib_cq *gsi_cq = gsi->ibqp.send_cq;
 struct mlx5_ib_gsi_wr *wr;
 u32 index;

 for (index = gsi->outstanding_ci; index != gsi->outstanding_pi;
      index++) {
  wr = &gsi->outstanding_wrs[index % gsi->cap.max_send_wr];

  if (!wr->completed)
   break;

  if (gsi->sq_sig_type == IB_SIGNAL_ALL_WR ||
      wr->send_flags & IB_SEND_SIGNALED)
   WARN_ON_ONCE(mlx5_ib_generate_wc(gsi_cq, &wr->wc));

  wr->completed = 0;
 }

 gsi->outstanding_ci = index;
}
