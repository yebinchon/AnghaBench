
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp {int qpn; } ;
typedef enum mlx4_event { ____Placeholder_mlx4_event } mlx4_event ;


 int pr_warn_ratelimited (char*,int,int ) ;

__attribute__((used)) static void mlx4_ib_wq_event(struct mlx4_qp *qp, enum mlx4_event type)
{
 pr_warn_ratelimited("Unexpected event type %d on WQ 0x%06x. Events are not supported for WQs\n",
       type, qp->qpn);
}
