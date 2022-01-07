
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct qm_aeqe {size_t dw0; } ;
struct TYPE_4__ {int aeq_head; int aeqc_phase; } ;
struct hisi_qm {TYPE_2__ status; struct qm_aeqe* aeqe; TYPE_1__* pdev; scalar_t__ io_base; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int dev; } ;


 size_t ARRAY_SIZE (size_t*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QM_AEQE_PHASE (struct qm_aeqe*) ;
 size_t QM_AEQE_TYPE_SHIFT ;
 int QM_DOORBELL_CMD_AEQ ;
 int QM_Q_DEPTH ;
 scalar_t__ QM_VF_AEQ_INT_SOURCE ;
 int dev_err (int *,char*,size_t) ;
 int qm_db (struct hisi_qm*,int ,int ,int,int ) ;
 size_t* qm_fifo_overflow ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t qm_aeq_irq(int irq, void *data)
{
 struct hisi_qm *qm = data;
 struct qm_aeqe *aeqe = qm->aeqe + qm->status.aeq_head;
 u32 type;

 if (!readl(qm->io_base + QM_VF_AEQ_INT_SOURCE))
  return IRQ_NONE;

 while (QM_AEQE_PHASE(aeqe) == qm->status.aeqc_phase) {
  type = aeqe->dw0 >> QM_AEQE_TYPE_SHIFT;
  if (type < ARRAY_SIZE(qm_fifo_overflow))
   dev_err(&qm->pdev->dev, "%s overflow\n",
    qm_fifo_overflow[type]);
  else
   dev_err(&qm->pdev->dev, "unknown error type %d\n",
    type);

  if (qm->status.aeq_head == QM_Q_DEPTH - 1) {
   qm->status.aeqc_phase = !qm->status.aeqc_phase;
   aeqe = qm->aeqe;
   qm->status.aeq_head = 0;
  } else {
   aeqe++;
   qm->status.aeq_head++;
  }

  qm_db(qm, 0, QM_DOORBELL_CMD_AEQ, qm->status.aeq_head, 0);
 }

 return IRQ_HANDLED;
}
