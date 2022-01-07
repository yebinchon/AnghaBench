
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ocrdma_eqe {int id_valid; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int eq_intr_cnt; } ;
struct ocrdma_eq {int cq_cnt; TYPE_2__ q; TYPE_1__ aic_obj; struct ocrdma_dev* dev; } ;
struct ocrdma_dev {int dummy; } ;
typedef int irqreturn_t ;
typedef int eqe ;


 int IRQ_HANDLED ;
 int OCRDMA_EQE_FOR_CQE_MASK ;
 int OCRDMA_EQE_MAJOR_CODE_MASK ;
 int OCRDMA_EQE_MAJOR_CODE_SHIFT ;
 int OCRDMA_EQE_RESOURCE_ID_SHIFT ;
 int OCRDMA_EQE_VALID_MASK ;
 int OCRDMA_MAJOR_CODE_SENTINAL ;
 int ocrdma_cq_handler (struct ocrdma_dev*,int) ;
 int ocrdma_eq_inc_tail (struct ocrdma_eq*) ;
 struct ocrdma_eqe* ocrdma_get_eqe (struct ocrdma_eq*) ;
 int ocrdma_le32_to_cpu (struct ocrdma_eqe*,int) ;
 int ocrdma_ring_eq_db (struct ocrdma_dev*,int ,int,int,int) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static irqreturn_t ocrdma_irq_handler(int irq, void *handle)
{
 struct ocrdma_eq *eq = handle;
 struct ocrdma_dev *dev = eq->dev;
 struct ocrdma_eqe eqe;
 struct ocrdma_eqe *ptr;
 u16 cq_id;
 u8 mcode;
 int budget = eq->cq_cnt;

 do {
  ptr = ocrdma_get_eqe(eq);
  eqe = *ptr;
  ocrdma_le32_to_cpu(&eqe, sizeof(eqe));
  mcode = (eqe.id_valid & OCRDMA_EQE_MAJOR_CODE_MASK)
    >> OCRDMA_EQE_MAJOR_CODE_SHIFT;
  if (mcode == OCRDMA_MAJOR_CODE_SENTINAL)
   pr_err("EQ full on eqid = 0x%x, eqe = 0x%x\n",
          eq->q.id, eqe.id_valid);
  if ((eqe.id_valid & OCRDMA_EQE_VALID_MASK) == 0)
   break;

  ptr->id_valid = 0;

  ocrdma_ring_eq_db(dev, eq->q.id, 0, 1, 1);

  if ((eqe.id_valid & OCRDMA_EQE_FOR_CQE_MASK) == 0) {
   cq_id = eqe.id_valid >> OCRDMA_EQE_RESOURCE_ID_SHIFT;
   ocrdma_cq_handler(dev, cq_id);
  }
  ocrdma_eq_inc_tail(eq);




  if (budget)
   budget--;

 } while (budget);

 eq->aic_obj.eq_intr_cnt++;
 ocrdma_ring_eq_db(dev, eq->q.id, 1, 1, 0);
 return IRQ_HANDLED;
}
