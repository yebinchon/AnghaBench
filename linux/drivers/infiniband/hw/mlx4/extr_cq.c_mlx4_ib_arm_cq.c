
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_cq {int device; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_4__ {int mcq; } ;
struct TYPE_3__ {int uar_lock; int uar_map; } ;


 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 int MLX4_CQ_DB_REQ_NOT ;
 int MLX4_CQ_DB_REQ_NOT_SOL ;
 int MLX4_GET_DOORBELL_LOCK (int *) ;
 int mlx4_cq_arm (int *,int ,int ,int ) ;
 TYPE_2__* to_mcq (struct ib_cq*) ;
 TYPE_1__* to_mdev (int ) ;

int mlx4_ib_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
 mlx4_cq_arm(&to_mcq(ibcq)->mcq,
      (flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
      MLX4_CQ_DB_REQ_NOT_SOL : MLX4_CQ_DB_REQ_NOT,
      to_mdev(ibcq->device)->uar_map,
      MLX4_GET_DOORBELL_LOCK(&to_mdev(ibcq->device)->uar_lock));

 return 0;
}
