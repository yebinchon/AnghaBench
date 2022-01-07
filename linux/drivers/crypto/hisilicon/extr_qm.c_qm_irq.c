
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int eq_head; } ;
struct hisi_qm {TYPE_2__ status; TYPE_1__* pdev; scalar_t__ io_base; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int dev; } ;


 int IRQ_NONE ;
 int QM_DOORBELL_CMD_EQ ;
 scalar_t__ QM_VF_EQ_INT_SOURCE ;
 int dev_err (int *,char*) ;
 int qm_db (struct hisi_qm*,int ,int ,int ,int ) ;
 int qm_irq_handler (int,void*) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t qm_irq(int irq, void *data)
{
 struct hisi_qm *qm = data;

 if (readl(qm->io_base + QM_VF_EQ_INT_SOURCE))
  return qm_irq_handler(irq, data);

 dev_err(&qm->pdev->dev, "invalid int source\n");
 qm_db(qm, 0, QM_DOORBELL_CMD_EQ, qm->status.eq_head, 0);

 return IRQ_NONE;
}
