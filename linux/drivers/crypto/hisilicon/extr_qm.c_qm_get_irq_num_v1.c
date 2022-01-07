
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {int dummy; } ;


 int QM_IRQ_NUM_V1 ;

__attribute__((used)) static u32 qm_get_irq_num_v1(struct hisi_qm *qm)
{
 return QM_IRQ_NUM_V1;
}
