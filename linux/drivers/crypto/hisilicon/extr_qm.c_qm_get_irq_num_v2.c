
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {scalar_t__ fun_type; } ;


 scalar_t__ QM_HW_PF ;
 int QM_IRQ_NUM_PF_V2 ;
 int QM_IRQ_NUM_VF_V2 ;

__attribute__((used)) static u32 qm_get_irq_num_v2(struct hisi_qm *qm)
{
 if (qm->fun_type == QM_HW_PF)
  return QM_IRQ_NUM_PF_V2;
 else
  return QM_IRQ_NUM_VF_V2;
}
