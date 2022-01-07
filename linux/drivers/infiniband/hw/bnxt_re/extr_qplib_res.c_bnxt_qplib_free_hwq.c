
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bnxt_qplib_hwq {int level; int is_user; scalar_t__ cp_bit; scalar_t__ cons; scalar_t__ prod; scalar_t__ element_size; scalar_t__ max_elements; int * pbl; } ;


 int PBL_LVL_MAX ;
 int __free_pbl (struct pci_dev*,int *,int) ;

void bnxt_qplib_free_hwq(struct pci_dev *pdev, struct bnxt_qplib_hwq *hwq)
{
 int i;

 if (!hwq->max_elements)
  return;
 if (hwq->level >= PBL_LVL_MAX)
  return;

 for (i = 0; i < hwq->level + 1; i++) {
  if (i == hwq->level)
   __free_pbl(pdev, &hwq->pbl[i], hwq->is_user);
  else
   __free_pbl(pdev, &hwq->pbl[i], 0);
 }

 hwq->level = PBL_LVL_MAX;
 hwq->max_elements = 0;
 hwq->element_size = 0;
 hwq->prod = 0;
 hwq->cons = 0;
 hwq->cp_bit = 0;
}
