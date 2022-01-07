
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct qm_eqe {size_t dw0; } ;
struct hisi_qp {int dummy; } ;
struct hisi_qm {struct hisi_qp** qp_array; } ;


 size_t QM_EQE_CQN_MASK ;

__attribute__((used)) static struct hisi_qp *qm_to_hisi_qp(struct hisi_qm *qm, struct qm_eqe *eqe)
{
 u16 cqn = eqe->dw0 & QM_EQE_CQN_MASK;

 return qm->qp_array[cqn];
}
