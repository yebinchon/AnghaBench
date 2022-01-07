
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mthca_cq {int arm_sn; int cons_index; int cqn; int arm_db; } ;
struct ib_cq {int device; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
typedef int __be32 ;
struct TYPE_2__ {int doorbell_lock; scalar_t__ kar; } ;


 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 int MTHCA_ARBEL_CQ_DB_REQ_NOT ;
 int MTHCA_ARBEL_CQ_DB_REQ_NOT_SOL ;
 scalar_t__ MTHCA_CQ_DOORBELL ;
 int MTHCA_GET_DOORBELL_LOCK (int *) ;
 int cpu_to_be32 (int) ;
 int mthca_write64 (int,int,scalar_t__,int ) ;
 int mthca_write_db_rec (int *,int ) ;
 struct mthca_cq* to_mcq (struct ib_cq*) ;
 TYPE_1__* to_mdev (int ) ;
 int wmb () ;

int mthca_arbel_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
 struct mthca_cq *cq = to_mcq(ibcq);
 __be32 db_rec[2];
 u32 dbhi;
 u32 sn = cq->arm_sn & 3;

 db_rec[0] = cpu_to_be32(cq->cons_index);
 db_rec[1] = cpu_to_be32((cq->cqn << 8) | (2 << 5) | (sn << 3) |
    ((flags & IB_CQ_SOLICITED_MASK) ==
     IB_CQ_SOLICITED ? 1 : 2));

 mthca_write_db_rec(db_rec, cq->arm_db);





 wmb();

 dbhi = (sn << 28) |
  ((flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
   MTHCA_ARBEL_CQ_DB_REQ_NOT_SOL :
   MTHCA_ARBEL_CQ_DB_REQ_NOT) | cq->cqn;

 mthca_write64(dbhi, cq->cons_index,
        to_mdev(ibcq->device)->kar + MTHCA_CQ_DOORBELL,
        MTHCA_GET_DOORBELL_LOCK(&to_mdev(ibcq->device)->doorbell_lock));

 return 0;
}
